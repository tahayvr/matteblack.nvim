#
# Theme Test File
# This file contains various Python syntax elements to test your Neovim theme.
#

# --- Comments ---
# This is a standard comment.
# TODO: Implement the user authentication feature.
# FIXME: The calculation for gravity is incorrect.
# NOTE: Remember that this function is recursive.
# WARNING: This method is deprecated and will be removed.
# DANGER: Modifying this section can cause data loss.

# --- Imports ---
import os
import re
from typing import List, Dict, Optional, Any
from math import pi as PI_VALUE, sqrt

# --- Variables and Constants ---
A_CONSTANT_VARIABLE = "I do not change"
another_string = "This is a string with an escape sequence: \n"
raw_string = r"This is a raw string with a \n that doesn't escape."
f_string = f"The value of PI is approximately {PI_VALUE:.2f}"

integer_var = 1_000_000
float_var = 3.14159
boolean_true = True
boolean_false = False
none_value = None

# --- Data Structures ---
my_list: List[int] = [1, 2, 3, 4, 5]
my_dictionary: Dict[str, Any] = {
    "key": "value",
    "number": 123,
    "nested_list": my_list
}
my_tuple = (1, 'hello', True)

# --- Class Definition ---
class Vehicle:
    """
    A simple class representing a vehicle.
    @text.literal: This is a docstring literal.
    Check out the docs here: https://www.google.com
    """
    # @variable.builtin: `self` is a special variable
    def __init__(self, make: str, model: str, year: int):
        self.make = make # @property
        self.model = model
        self.year = year
        self.is_running = False

    # @method.call: This is a method
    def start_engine(self) -> None:
        """Starts the vehicle's engine."""
        if not self.is_running:
            self.is_running = True
            print(f"The {self.make} {self.model}'s engine is now running.") # @function.builtin
        else:
            print("Engine is already running.")

    @classmethod
    def from_string(cls, vehicle_str: str):
        """Creates a Vehicle instance from a string."""
        make, model, year_str = vehicle_str.split('-')
        return cls(make, model, int(year_str)) # @constructor

# --- Functions ---
def calculate_area(radius: float) -> float:
    """
    Calculates the area of a circle.
    @parameter: radius is a parameter.
    """
    # @keyword.operator: The `*` and `**` are operators
    area = PI_VALUE * (radius ** 2)
    # @keyword.return: `return` is a keyword
    return area

# --- Control Flow ---
car = Vehicle("Tesla", "Model S", 2023)
car.start_engine()

# @conditional: `if`, `elif`, `else`
if car.year > 2020:
    print("This is a modern car.")
elif car.year == 2020:
    print("This car was made in 2020.")
else:
    print("This is an older car.")

# @repeat: `for` and `while` loops
for i in range(5):
    print(f"Loop iteration: {i}")

# --- Regular Expressions & Error Handling ---
# @string.regex: This is a regular expression
email_pattern = re.compile(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")

# @exception: `try`, `except`, `finally`
try:
    result = 10 / 0
except ZeroDivisionError as e:
    # @variable.builtin: `e` is an exception instance
    print(f"Error: {e}") # This will print an error message
finally:
    print("This block always executes.")

# --- Syntax Error for Diagnostics ---
# The line below has a syntax error to test your LSP error highlighting.
# Remove the '#' to see it in action.
# an_error = "hello" world
