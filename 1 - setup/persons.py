import re

def load_cypher_from_file(filename):
    """Load Cypher code from a specified file."""
    with open(filename, 'r') as file:
        return file.read()

# Load Cypher code
cypher_code = load_cypher_from_file("setup.cypher")

# Regex pattern to find person IDs
pattern_id = r"CREATE \((\w+):Person \{"
# Regex pattern to find full names
pattern_full_name = r"name:'(.*?)',"
# Regex pattern to find birth years
pattern_birth_year = r"born:(\d{4})"

# Find all person IDs in the Cypher code
ids = re.findall(pattern_id, cypher_code)
print(f"Number of person IDs found: {len(ids)}")

# Find all full names in the Cypher code
matches_full_name = re.findall(pattern_full_name, cypher_code)
print(f"Number of full names found: {len(matches_full_name)}")

# Find all birth years in the Cypher code
matches_birth_year = re.findall(pattern_birth_year, cypher_code)
print(f"Number of birth years found: {len(matches_birth_year)}")

# Combine IDs, full names, and birth years into a list of tuples
persons_data = list(zip(ids, matches_full_name, matches_birth_year))

# Generate SQL script for creating the Persons table
sql_script = """
DROP TABLE IF EXISTS Persons CASCADE;
CREATE TABLE Persons (
  id VARCHAR(255) PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  born INTEGER NOT NULL
);
"""

# Generate SQL insert statement
sql_insert = "INSERT INTO Persons (id, name, born) VALUES\n"

# Format each person into the SQL statement
values = []
for person_id, full_name, birth_year in persons_data:
    values.append(f"('{person_id}', '{full_name.strip()}', {birth_year.strip()})")

# Join all values and finalize the SQL statement
sql_insert += ",\n".join(values) + ";"

# Combine table creation and insert statements
full_sql_script = sql_script + "\n\n" + sql_insert

# Write to SQL file
with open("persons.sql", "w") as sql_file:
    sql_file.write(full_sql_script)

print("SQL script generated and saved to 'persons.sql'.")
