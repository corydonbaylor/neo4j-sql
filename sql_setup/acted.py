import re

def load_cypher_from_file(filename):
    """Load Cypher code from a specified file."""
    with open(filename, 'r') as file:
        return file.read()

# Load Cypher code
cypher_code = load_cypher_from_file("setup.cypher")

# Regex pattern to find person IDs
pattern_person_id = r"\((\w+)\)-\[:ACTED_IN"
# Regex pattern to find roles
pattern_roles = r"\{roles:\['(.*?)'\]\}\]->"
# Regex pattern to find movie IDs
pattern_movies = r"\[:ACTED_IN \{roles:\[.*?\]\}\]->\((\w+)"

# Find all person IDs in the Cypher code
person_ids = re.findall(pattern_person_id, cypher_code)
print(f"Number of person IDs found: {len(person_ids)}")

# Find all roles in the Cypher code
roles = re.findall(pattern_roles, cypher_code)
print(f"Number of roles found: {len(roles)}")

# Find all movie IDs in the Cypher code
movies = re.findall(pattern_movies, cypher_code)
print(f"Number of movie IDs found: {len(movies)}")

# Combine person IDs, roles, and movie IDs into a list of tuples
acted_in_data = list(zip(movies, person_ids, roles))

# Generate SQL script for creating the Acted_In table
sql_script = """
DROP TABLE IF EXISTS Acted_In CASCADE;
CREATE TABLE Acted_In (
  movie_id VARCHAR(255) REFERENCES Movies(id),
  person_id VARCHAR(255) REFERENCES Persons(id),
  roles TEXT[], -- Consider using ENUM if roles are limited
  PRIMARY KEY (movie_id, person_id)
);
"""

# Generate SQL insert statement
sql_insert = "INSERT INTO Acted_In (movie_id, person_id, roles) VALUES\n"

# Format each entry into the SQL statement
values = []
for movie_id, person_id, role in acted_in_data:
    values.append(f"('{movie_id}', '{person_id}', ARRAY['{role}'])")

# Join all values and finalize the SQL statement
sql_insert += ",\n".join(values) + ";"

# Combine table creation and insert statements
full_sql_script = sql_script + "\n\n" + sql_insert

# Write to SQL file
with open("acted_in.sql", "w") as sql_file:
    sql_file.write(full_sql_script)

print("SQL script for Acted_In generated and saved to 'acted_in.sql'.")
