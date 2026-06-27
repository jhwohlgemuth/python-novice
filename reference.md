---
title: 'Reference'
---

## List Comprehensions

List comprehensions provide a concise way to create lists. Common applications are to make new lists where each element is the result of some operations applied to each member of another sequence or iterable, or to create a subsequence of those elements that satisfy a certain condition.

```python
squares = [x ** 2 for x in range(1, 10)]
```

List comprehension are the preferred way to create lists in Python, and are often more performant than using a `for` loop to build a list.

## Higher-Order Functions

Higher-order functions take another function as an argument, return a function, or both. In Python, `map`, `filter`, and `reduce` are common tools for transforming data without writing an explicit loop.

### `map`

Use `map` to apply the same function to every item in an iterable.

```python
map(morphism, iterable)
```

`map` returns a `map` object, so it is often wrapped in `list()` when you want to see all results at once.

```python
numbers = [1, 2, 3, 4]
squares = list(map(lambda x: x ** 2, numbers))
print(squares)
```

```output
[1, 4, 9, 16]
```

### `filter`

Use `filter` to keep only the items that satisfy a condition.

```python
filter(predicate, iterable)
```

For example, consider a predicate function that returns `True` for even numbers and `False` for odd numbers.

```python
numbers = [1, 2, 3, 4, 5, 6]
evens = list(filter(lambda x: x % 2 == 0, numbers))
print(evens)
```

```python
[2, 4, 6]
```

### `reduce`

Use `reduce` to combine all items in an iterable into a single value. Unlike `map` and `filter`, `reduce` is not a built-in function in Python 3, so it must be imported from `functools`.

```python
from functools import reduce

reduce(accumulator, iterable)
```

The accumulator function passed to `reduce` should take two arguments: the accumulated value so far and the next item from the iterable.

```python
from functools import reduce

numbers = [1, 2, 3, 4]
total = reduce(lambda acc, x: acc + x, numbers)
print(total)
```

```output
10
```

`reduce` can also take an optional third argument, which is the initial value of the accumulator. If provided, this value will be used as the starting point for the accumulation.

```python
from functools import reduce

numbers = [1, 2, 3, 4]
total = reduce(lambda acc, x: acc + x, numbers, 10)
print(total)
```

Output:

```output
20
```

Use `reduce` when:

- you want to collapse many values into one result
- you are computing a sum, product, combined string, or other accumulated result

### Combining `map` and `filter`

These functions can be composed to build a data-processing pipeline.

```python
square = lambda x: x ** 2
is_even = lambda x: x % 2 == 0
numbers = range(1, 10)
squares_of_evens = list(map(square, filter(is_even, numbers)))
print(squares_of_evens)
```

```output
[4, 16, 36, 64]
```

This filters the even numbers and then maps each remaining value to its square.

### Comparing with `for` loops

In the examples above, we could have used a `for` loop to achieve the same results. However, using `map`, `filter`, and `reduce` can lead to more concise and expressive code, especially when dealing with complex data transformations.

For example, the following `for` loop computes the squares of even numbers:

```python
squares_of_evens = []
for number in range(1, 10):
    if number % 2 == 0:
        squares_of_evens.append(number ** 2)
```

Although this may work for some situations, it has more cognitive load than the equivalent `map` and `filter` solution, especially as the complexity of the data processing increases. Furthermore, `for` loops typically require mutation and are less modular than using higher-order functions, which can lead to more maintainable and reusable code.

## Resources

- [Python Glossary](https://docs.python.org/3/glossary.html)
- [Python Website](https://www.python.org/)
- [Python Documentation](https://docs.python.org/3/)
- [Python Tutorial](https://docs.python.org/3/tutorial/introduction.html)
- [Built-in Functions](https://docs.python.org/3/library/functions.html)
- [functools Documentation](https://docs.python.org/3/library/functools.html)
- [Including Variables in Strings](https://realpython.com/python-f-strings/)
- [User Input Tutorial](https://www.geeksforgeeks.org/python-3-input-function/)

## Glossary

- **higher-order function:** a function that takes another function as an argument, returns a function, or both
- **iterable:** a value that can be looped over, such as a list, tuple, string, or range
- **accumulator:** the running result used by `reduce` as it combines values

