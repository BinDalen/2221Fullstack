
# * Python, along with many other programming languages, use Object-Oriented Programming(OOP)
# * OOP allows for creation of classes, which are the generic forms of objects.
# ? Example of a python class:
# class Flight:
#     def __init__(self, origin, destination, duration):
#         self.origin = origin
#         self.destination = destination
#         self.duration = duration

# * __init__ is a method, which is a function performed on individual objects.
# * __init__ describes what should happen when a flight object is created.

# ? Create flight
# f = Flight(origin="New York", destination="Paris", duration=540)

# ? Change the value of a property
# f.duration += 10

# ? Print details about flight
# print(f.origin)
# print(f.destination)
# print(f.duration)

# * Note self is automatically specified

# ? Additional methods can be added to the Flight class
# class Flight:
#     def __init__(self, origin, destination, duration):
#         self.origin = origin
#         self.destination = destination
#         self. duration = duration
#     def print_info(self):
#         print(f"Flight origin: {self.origin}")
#         print(f"Flight destination: {self.destination}")
#         print(f"Flight duration: {self.duration}")
#     def delay(self, amount):
#         self.duration += amount

# f1 = Flight(origin="New York", destination="Paris", duration="540")
# f1.print_info()

# * Methods can also take additional arguments and modify properties

# * Note that writing methods like delay and print_info, as well as the Flight class
# * Allows for Abstraction.
# * The Flight class and all of its methods can be used in a logical and easily understood way
# * without needing to know or even understand how Flight may be implemented

# ? Given a simple Passenger class
class Passenger:
    def __init__(self, name):
        self.name = name

#? ? A more complex Flight class can be implemented
class Flight:
    counter = 1
    def __init__(self, origin, destination, duration):
        # ? Keep track of id number
        self.id = Flight.counter
        Flight.counter += 1

        # ? Keep track of passengers
        self.passengers = []

        # ? Details about flight
        self.origin = origin
        self.destination = destination
        self.duration = duration

    def print_info(self):
        print(f"Flight origin: {self.origin}")
        print(f"Flight destination: {self.destination}")
        print(f"Flight duration: {self.duration}")
        print()
        print("Passengers: ")
        for passenger in self.passengers:
            print(f"{passenger.name}")

    def add_passenger(self, p):
        self.passengers.append(p)
        p.flight_id = self.id

# * Note that counter is defined outside of the __init__ function
# * and is not specific to individual flights (It's not defined as self.counter).
# * This means that all flight objects can see this same counter variable,
# * which allows for the implementation of the id property shown.

# * Similar to the SQL database which had an auto-incrementing id column,
# * the id property of flight will automatically increment as new flight objects are created.

# ? Here's how the more advanced Flight class should be used:

f1 = Flight(origin="New York", destination="Paris", duration="540")

alice = Passenger(name="Alice")
bob = Passenger(name="Bob")

f1.add_passenger(alice)
f1.add_passenger(bob)

f1.print_info()