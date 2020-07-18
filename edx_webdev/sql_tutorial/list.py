import os
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker

# ?: In order to integrate these databases into web applications,
# ?: the Python code running the web server must also be able to run SQL commands.
# ?: SQLAlchemy is a Python library that allows for this functionality

engine = create_engine(os.getenv("DATABASE_URL"))
# ?: database engine object from SQLAlchemy that manges connections to the database
# ?: DATABASE_URL is an environment variable that indicates where the database lives

db = scoped_session(sessionmaker(bind=engine))
# ?: create a 'scoped session' that ensures differrent users' interactions
# ?: with the database are kept seperate

def main():
    # TODO: execute this SQL command and return all of the results
    flights = db.execute("SELECT origin, destination, duration FROM flights").fetchall()
    
    # TODO: for every flight, print out the flight info
    for flight in flights:
        print(f"{flight.origin} to {flight.destination}, {flight.duration} minutes.")

if __name__ == "__main__":
    main()

# ?: Flights is a list of the rows that came back from the SQL query.
# ?: The individual columns in each row can be accessed with dot notation.