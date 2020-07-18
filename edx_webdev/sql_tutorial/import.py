import csv
import os

# ?: Data can also be inserted into a database with Python.
# ?: In this example, the raw data is coming from a CSV (comma-seperated values) file:

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

engine = create_engine(os.getenv("DATABASE_URL"))
db = scoped_session(sessionmaker(bind=engine))

def main():
    f = open("flights.csv")
    reader = csv.reader(f)
    for origin, destination, duration in reader: # loop gives each column a name
        db.execute("INSERT INTO flights (origin, destination, duration) VALUES (:origin, :destination, :duration)",
            # ?: Substitues values from CSV line into SQL command, as per this dict
            {"origin": origin, "destination": destination, "duration": duration})
        print(f"Added flight from {origin} to {destination} lasting {duration} minutes.")
    db.commit() # transactions are assumed, so close the transaction when finished

# ?: The colon notation used in db.execute() call is Postgres' placeholder notation for values.
# ?: This allows for the substitution of Python variables into SQL commands.
# ?: Additionally, SQLAlchemy automatically takes care of anitizing the values passed in. 

if __name__ == "__main__":
    main()