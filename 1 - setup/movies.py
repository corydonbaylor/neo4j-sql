import re

def load_cypher_from_file(filename):
    """Load Cypher code from a specified file."""
    with open(filename, 'r') as file:
        return file.read()

# Load Cypher code
cypher_code = load_cypher_from_file("setup.cypher")

# Regex pattern to find movie IDs
pattern_id = r"CREATE \((\w+):Movie \{"
# Regex pattern to find movie titles
pattern_title = r"title:'(.*?)', released:"
# Regex pattern to find release years
pattern_released = r"released:(\d{4}), tagline:"
# Regex pattern to find taglines
pattern_tagline = r"tagline:'(.*?)'\s*\}\)"

# Find all movie IDs in the Cypher code
ids = re.findall(pattern_id, cypher_code)
print(f"Number of movie IDs found: {len(ids)}")

# Find all titles in the Cypher code
titles = re.findall(pattern_title, cypher_code)
print(f"Number of movie titles found: {len(titles)}")

# Find all release years in the Cypher code
released = re.findall(pattern_released, cypher_code)
print(f"Number of release years found: {len(released)}")

# Find all taglines in the Cypher code
taglines = re.findall(pattern_tagline, cypher_code)
print(f"Number of taglines found: {len(taglines)}")

# Combine IDs, titles, release years, and taglines into a list of tuples
movies_data = list(zip(ids, titles, released, taglines))

# Generate SQL insert statement
sql_insert = "INSERT INTO Movies (id, title, released, tagline) VALUES\n"

# Format each movie into the SQL statement
values = []
for movie_id, title, year, tagline in movies_data:
    values.append(f"('{movie_id}', '{title.strip()}', {year.strip()}, '{tagline.strip()}')")

# Join all values and finalize the SQL statement
sql_insert += ",\n".join(values) + ";"

# Write to SQL file
with open("movies.sql", "w") as sql_file:
    sql_file.write(sql_insert)

print("SQL script generated and saved to 'movies.sql'.")
