---
title: "Types and Operators"
teaching: 20
exercises: 5
---

:::::::::::::::::::::::::::::::::::::: questions 

## Questions

  - "Python has types?"
  - "How do you check the type of a variable?"
  - "What are the basic data types in Python?"
  - "How do you convert between different data types?"

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

## Objectives

  - Understand the concept of a type system in programming languages
  - Identify and use basic data types in Python
  - Learn how to check the type of a variable in Python
  - Convert between different data types in Python
  - Use string slicing and indexing to manipulate strings in Python

::::::::::::::::::::::::::::::::::::::::::::::::

In Python, almost everything is an object, and every object has a type. 
In the context of Python, a type can be thought of as a description of what a value is and what you can do with it.
That is, the type of an Python object determines what operations can be performed on it and how it behaves. 
Python has a rich set of built-in data types, and understanding these types is fundamental to programming in Python.

In contrast with a strongly typed language that assures type safety (e.g., [🦀Rust](https://rust-lang.org/)), 
Python is dynamically typed, meaning that the type of a variable is determined at runtime and can change as the program executes. 
In practice, this makes Python easier to write and run, but it also means that type-related errors (and many other runtime errors) may only be discovered during execution.

Basically, Python does not care about your types, but your types help Python understand how to interpret your code.

## Types in Python

::::::::::::::::::::::::::::::::::::: instructor

Floats are so called because they represent numbers that can "float" around the decimal point.

::::::::::::::::::::::::::::::::::::::::::::::::

Python has several built-in data types, including but not limited to:

  - `int`: **Int**eger numbers (e.g., `1`, `42`, `-5`)
  - `float`: **Float**ing-point numbers (e.g., `3.14`, `-0.001`)
  - `str`: **Str**ings, which are sequences of characters (e.g., `"Hello, World!"`)
  - `bool`: **Bool**ean values, which can be either `True` or `False`
  - `list`: **List**s, ordered, mutable collections of items (e.g., `[1, 2, 3]`)
  - `tuple`: **Tuple**s, ordered, immutable collections of items (e.g., `(1, 2, 3)`)
  - `dict`: **Dict**ionaries, unordered collections of key-value pairs (e.g., `{"name": "Alice", "age": 30}`)
  - `set`: **Set**s, unordered collections of unique items (e.g., `{1, 2, 3}`)

Python provides the built-in function `type()` that can be used to check the type of a variable or value,

```pycon
>>> type(42)
<class 'int'>

>>> type(3.14)
<class 'float'>

>>> type("Hello, World!")
<class 'str'>

>>> type(True)
<class 'bool'>

>>> type([1, 2, 3])
<class 'list'>

>>> type((1, 2, 3))
<class 'tuple'>

>>> type({"name": "Alice", "age": 30})
<class 'dict'>

>>> type({1, 2, 3})
<class 'set'>
```

As is the case with most coding languages, integers (`-2`, `-1`, `0`, `1`, etc.) are of the type `int` and rational numbers (`-2.0`, `-1.3`, `0.2`, `1.4`, etc.) are of the type `float`. 
Mixing `float` and `int` numbers typically results in converting everything to a `float`. 
Using the `/` division operator to divide integers also results in a `float`, unless you use the `//` "floor" division operator

```bash
>>> type(1.0)
<class 'float'>
>>> type(1)
<class 'int'>
>>> 4.2 * 2
8.4
>>> 17 / 3
5.666666666666667
>>> 17 // 3
5
```

A string in Python is a sequence of characters that usually represent a form of text. 
In other coding languages, such as Fortran and C, text is usually stored in some form of "character" or "char" datatype. 
Python, however, does not have a character datatype. 
Instead, a single character in Python is simply a "string" datatype called str with length 1 (a string with two characters would be of length 2, etc.). 
Like with numbers, Python also has the ability to manipulate strings.

We have already used a few strings in this lesson when we used the `print` function, but you can also assign strings to variables using `=`. 
To create a string in Python, all you have to do is enclose it in a pair of quotation marks, either a pair of single quotes `'...'` or double quotes `"..."`. 
The choice between the two is usually personal preference; however, `"` is helpful when the string you are dealing with already has a `'` in it, and vice versa.
For example, consider the following code,

```bash
>>> x = "Hello"
>>> y = 'Hello'
>>> x==y
True
>>> no_error_1 = "You're cool"
>>> error_1 = 'You're cool'

  File "<stdin>", line 1
    error_1 = 'You're cool'
                    ^
SyntaxError: invalid syntax
>>> no_error_2 = ' No "i" in "Team" '
>>> error_2 = " No "i" in "Team" "

  File "<stdin>", line 1
    error_2 = " No "i" in "Team" "
                    ^
SyntaxError: invalid syntax
```

For a more advanced approach, you can explicitly "escape" the error messages seen above by using either `\'` or `\"` in problematic areas, as in

```bash
>>> error_1 = 'You\'re cool'
>>> error_2 = " No \"i\" in \"Team\" "
```

Similar to numbers, strings also can be manipulated using the `+` and `*` operators. More specifically, the `+` operator combines two strings, 
while the `*` operator can be used to repeat a string if used with a number, as in

```bash
>>> "gg" + "ez"
'ggez'
>>> 3 * "yes"
'yesyesyes'
>>> ( 3 * "yes" ) + "no"
'yesyesyesno'
```

You may recall from the [first episode](./) that Python is dynamically typed, which means that the type of a variable is determined at runtime.
This allows for flexibility in how you use variables, but it also means that you need to be careful when performing operations on variables of different types, 
as it may lead to unexpected results and/or errors.

```bash
>>> 42 + 3
45
>>> "foo" + "bar"
'foobar'
>>> "foo" + 42
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: can only concatenate str (not "int") to str
```

## Type Conversion

Python provides built-in functions for converting between different data types. 
For example, you can convert a string to an integer using the `int()` function, and you can convert an integer to a string using the `str()` function.

```bash
>>> int("42")
42
>>> str(42)
'42'
```

::::::::::::::::::::::::::::::::::::: challenge

## The Cast Awakens

What does `str(True)` evaluate to?

::::::::::::::::::::::::::::::::::::: solution

## Solution
```python
'True'
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## The Matrix: Re-casted

What does `int(True)` evaluate to?

::::::::::::::::::::::::::::::::::::: solution

## Solution
Boolean values can be converted to integers, where `True` is converted to `1` and `False` is converted to `0`.
We call values such as `1` and `True` "truthy" values, while values such as `0` and `False` are called "falsy" values.
```python
1
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## The Return of the String

What does `int("Gandalf")` evaluate to?

::::::::::::::::::::::::::::::::::::: solution

## Solution
```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: invalid literal for int() with base 10: 'Gandalf'
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

## Operators in Python

One of the most common things Python is used for is being a *fancy* numerical calculator.

Python behaves similarly to other languages when performing arithmetic, 
using the operators `+`, `-`, `*`, `/` for addition, subtraction, multiplication, and division, respectively.

```bash
>>> 2 + 3
5
>>> 5 - 2
3
>>> 4 * 3
12
>>> 10 / 2
5.0
```

:::::::::::::::::::::::::::::::::::::: callout 

Python also supports exponentiation with the `**` operator, modular division with the `%` operator, and "floor" division with the `//` operator.

```bash
>>> 2 ** 3
8
>>> 7 % 3
1
>>> 7 // 3
2
```

::::::::::::::::::::::::::::::::::::::::::::::::

In Python (and many other programming languages), `=` is called the "assignment operator" and is used to assign a value to a variable.
The `==` operator is called the "equality operator" and is used to compare two values for equality, returning `True` if they are equal and `False` otherwise. 
We will cover `=` and `==` in more detail in the next episode. 
For now, just be aware that they are different operators with different purposes.
That being said, here are some examples of how `=` and `==` are used in Python,

```bash
>>> x = 5
>>> y = 10
>>> x == y
False
>>> x == 5
True
```

## String Slicing and Indexing

One cool thing about strings is that you can "slice" them to extract specific portions of the string. 
Slicing is very useful in Python programming, especially when analyzing data, plotting, and sorting. 
"Indexing" is a subset of slicing that only extracts one character from a string, while "slicing" can extract multiple characters at once (i.e., multiple indices).

Python is "zero-indexed", meaning indexing starts at `0` instead of `1`. 
The first character in a string has index `0`, the second character has index `1`, and so on and so forth. To find the full length of a string you can use the `len()` function. 
To start, you must put these indices in square brackets `[ ]`, as in

```bash
>>> alphabet = "abcdefghijklmnopqrstuvwxyz"
>>> len(alphabet)
26
>>> alphabet[0]
'a'
>>> alphabet[1]
'b'
>>> alphabet[25]
'z'
```

Note that in our example we had 26 letters (a to z), but since indexing starts from 0, the final letter in the string is index 25. 
You can also use negative indices to start at the end of the string. 
Therefore, you can think of using negative indices as reading from "right to left" instead of "left to right", as in

```bash
>>> alphabet[-1]
'z'
>>> alphabet[-2]
'y'
```

Negative indices can be helpful when you don't know how long a string is, 
but you know that you want specific characters located at the end of the string, however long the string may be.

you can use the `:` operator inside of `[ ]` to pick a range of indices (inserted on either side of the `:`). 
Note that when using `:`, the left side is *inclusive* while the right side is *exclusive*. 
Therefore, for a desired range, this results in a syntax of `[desired start index : desired end index + 1 ]`. For example, using our `alphabet` string variable of length 26, we have

```bash
>>> z[0:10]
'abcdefghij'
>>> z[0:5]
'abcde'
>>> z[1:5]
'bcde'
>>> z[1 : (4+1)]  # slices indices 1-4 (same as above, but with math)
'bcde'
```

Remember that when performing math inside of `[ ]` on indices, the numbers must be integers (i.e., `int` type objects) and/or the math that should result in an integer.

Instead of explicitly indicating the start/end of a slice with indices, you can choose to leave a side of the `:` blank. 
Leaving the left side blank means that you want the slice to begin at the start of the string, 
while leaving the right side blank means you want the slice to stop at the end of the string. 
Therefore, leaving both sides blank (i.e., `[ : ]`) indicates that you just want the entire string returned. 
Using our `alphabet` string variable again, we have

```bash
>>> alphabet[:]
'abcdefghijklmnopqrstuvwxyz'
>>> alphabet[2:]
'cdefghijklmnopqrstuvwxyz'
>>> alphabet[:8]
'abcdefgh'
>>> alphabet[:-1]
'abcdefghijklmnopqrstuvwxy'
>>> alphabet[:-2]
'abcdefghijklmnopqrstuvwx'
```

Because of the left side of `:` being included and the right side being excluded, this makes sure that `alphabet[ : index ] + alphabet[ index : ]` is always equal to `alphabet`

```bash
>>> alphabet[:2]
'ab'
>>> alphabet[2:]
'cdefghijklmnopqrstuvwxyz'
>>> alphabet[:2] + alphabet[2:]
'abcdefghijklmnopqrstuvwxyz'
>>> alphabet[:4] + alphabet[4:]
'abcdefghijklmnopqrstuvwxyz'
```

::::::::::::::::::::::::::::::::::::: challenge

## Knowledge Check

What does `(alphabet[13] + alphabet[:1]) * int("8")` evaluate to?

::::::::::::::::::::::::::::::::::::: solution

## Solution
```python
'nananananananana'
```

We can break this down step by step.

  1. `alphabet[13]` gives us the character at index 13, which is `'n'`.
  2. `alphabet[:1]` gives us the slice of the string from the start up to (but not including) index 1, which is `'a'`.
  3. Adding these together with `+` gives us `'n' + 'a'`, which results in the string `'na'`.
  4. `int("8")` converts the string `"8"` to the integer `8`.
  5. Finally, multiplying the string `'na'` by `8` with `*` gives us `'na' * 8`, which results in the string `'nananananananana'`.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

- Python has built-in types that describe the nature of values and how they can be manipulated.
- The `type()` function can be used to check the type of a variable or value.
- Python is dynamically typed, meaning that the type of a variable can change at runtime.
- Python provides built-in functions for converting between different data types.
- Python supports various operators for performing arithmetic and other operations on values.
- String slicing and indexing allow you to extract specific portions of a string based on their position.

::::::::::::::::::::::::::::::::::::::::::::::::
