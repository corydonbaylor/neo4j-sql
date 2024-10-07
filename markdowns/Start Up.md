# Getting Set Up

You are now about to embark on a journey. Moving from the choppy waters of SQL and relational databases to the calm port of cypher and Neo4j. It won't always be the easiest journey, but you will make it. 

Let's get paddling. 

First we need to make a graph database and an associated relational database. It should be as one-to-one as possible so that we get essentially the same results.

## Neo4j Start Up

To download neo4j, go to the following [link](https://www.google.com/url?q=https://neo4j.com/download/&source=gmail-imap&ust=1728931059000000&usg=AOvVaw2T6qsNHG-tSY0rtUvIfLWE). We are going to create a new project and fill it with some data. This is going to be **very** similar to the movies dataset, yet confusingly slightly different. Go to the following [repo](https://github.com/corydonbaylor/neo4j-sql). In the folder called `1- setup`, you will find a file called `setup.cypher`. Run everything in there.

You can see how your graph looks with the following query:

```
match (n) return n
```

Boom. You got data!

## Creating Something Similar in SQL

We are going to use PostgreSQL as our point of comparison to Neo4j. To download it for Mac, go [here](https://www.google.com/url?q=https://postgresapp.com/downloads.html&source=gmail-imap&ust=1728931059000000&usg=AOvVaw3FVT48gmw5FQfUNNomnWzD). Then we are going to download Postico 2. You then are going to open both Postico and Postgres. 

If you look in the Neo4j Desktop, you will see a file called "load-movie.cypher". This was used to set up the database in Neo4j. We are going to recreate that same database but now in SQL.

**A couple things to note on normalization!**

| Normalization      | Explained                                                    | Our Example                                                  |
| ------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| First Normal Form  | All columns contain atomized data and unique records         | - Each table has a primary key (e.g., `movie_id` in `Movies`, `person_id` in `Persons`) that uniquely identifies each record.  <br />- Atomic values are stored in each column. For example, the `title` and `tagline` columns in the `Movies` table contain single values. |
| Second Normal Form | All non-key attributes are dependent on the primary key      | All non-key attributes (e.g., `title`, `released`, `tagline` in `Movies`) are fully dependent on the primary key (`movie_id`). |
| Third Normal Form  | No transitive dependencies, non-key attributes aren't dependent on other non-key attributes | There are no transitive dependencies. For example, in the `Movies` table, the non-key attributes (`title`, `released`, `tagline`) do not depend on each other. |

  Finally, we are going to add some tables to help us with our many-to-many relationships:

- `Acted_In` links movies to actors, allowing a movie to have multiple actors and an actor to appear in multiple movies.
- `Directed`, `Produced`, and `Wrote` tables establish relationships between movies and directors, producers, and writers, respectively.

Ok, let's start creating tables. You will find the code to create each table again in the `1 - setup` folder. You can use [Postgres.sql](https://postgresapp.com/) to create the database, and [Postico](https://eggerapps.at/postico2/) to work as a GUI. 