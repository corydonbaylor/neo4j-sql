import re

def load_cypher_from_file(filename):
    """Load Cypher code from a specified file."""
    with open(filename, 'r') as file:
        return file.read()

# Load Cypher code
cypher_code = load_cypher_from_file("setup.cypher")

# Regex pattern to find person IDs
pattern_person_id = r"\((\w+)\)-\[:PRODUCED"
# Regex pattern to find movie IDs
pattern_movies = r"PRODUCED]->\((\w+)\)"

# Find all person IDs in the Cypher code
person_ids = re.findall(pattern_person_id, cypher_code)
print(f"Number of person IDs found: {len(person_ids)}")

# Find all movie IDs in the Cypher code
movies = re.findall(pattern_movies, cypher_code)
print(f"Number of movie IDs found: {len(movies)}")

# Combine person IDs, roles, and movie IDs into a list of tuples
produced_data = list(zip(movies, person_ids))

# Generate SQL script for creating the produced table
sql_script = """
DROP TABLE IF EXISTS produced CASCADE;
CREATE TABLE produced (
  movie_id VARCHAR(255) REFERENCES Movies(id),
  person_id VARCHAR(255) REFERENCES Persons(id),
  PRIMARY KEY (movie_id, person_id)
);
"""

# Generate SQL insert statement
sql_insert = "INSERT INTO produced (movie_id, person_id) VALUES\n"

# Format each entry into the SQL statement
values = []
for movie_id, person_id in produced_data:
    values.append(f"('{movie_id}', '{person_id}')")

# Join all values and finalize the SQL statement
sql_insert += ",\n".join(values) + ";"

# Combine table creation and insert statements
full_sql_script = sql_script + "\n\n" + sql_insert

# Write to SQL file
with open("produced.sql", "w") as sql_file:
    sql_file.write(full_sql_script)

print("SQL script for produced generated and saved to 'produced.sql'.")
