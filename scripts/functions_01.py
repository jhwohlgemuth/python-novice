# functions_01.py

# define the function
def print_add(x, y):
    """This function will sum x and y into a variable z and return the variable z when the function exits"""
    z = x + y
    return print(z)  # what is done on function exit


# Example 1.1: execute the function without saving the result, with print
print_add(x=3, y=5)
