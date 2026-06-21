# functions_02.py

# define the function
def add(x, y):
    """This function will sum x and y into a variable z and return the variable z when the function exits"""
    z = x + y
    return z


# Example 2.1: execute the function without saving the result
add(3, 5)

# Example 2.2: execute the function while saving result to a variable
result = add(3, 5)
print(result)
