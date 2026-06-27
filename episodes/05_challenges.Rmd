---
title: "Bonus Challenges"
teaching: 0
exercises: 0
---

| Challenge | Level | File |
| --- | --- | --- |
| Slicing the Cake | Easy | `scripts/challenges/cake.py` |
| Calculating the Box | Easy | `scripts/challenges/box.py` |
| Playing the Banjo | Medium | `scripts/challenges/banjo.py` |
| Counting the Sheep | Medium | `scripts/challenges/sheep.py` |
| Finding the Needle | Hard | `scripts/challenges/needle.py` |


::::::::::::::::::::::::::::::::::::: challenge

## Slicing the Cake

Who doesn't love slicing some cake? 
The objective of this challenge is to match two lists (test_cake and fake_cake) by slicing real_cake. 
Your mission is to edit the line labeled as "TO-DO" to get the script to work properly. 
After editing the script, run it to see if you correctly fixed things. 
If you are successful, you will see `'Success!'` printed out.

::::::::::::::::::::::::::::::::::::: solution

## Solution

```python
# Set up lists
real_cake = ["portal", "the cake", "is", "not", "a lie", "!", "hl3"]
fake_cake = ["the cake", "is", "a lie", "!"]
# Manipulate real_cake to match fake_cake
test_cake = real_cake[1:3] + real_cake[4:6]
# Check to see if you are correct
print("real cake:", real_cake)
print("fake cake:", fake_cake)
print("test cake:", test_cake)
if test_cake == fake_cake:
    print("Success!")
else:
    print("Try again!")
    print("Fake cake should equal test cake")
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Calculating the Box

Who doesn't love math and boxes? 
The objective of this challenge is to fill in the missing information of the get_size function to calculate the area and volume of a box and then return the results in the form of a list [area, volume]. 
You will need to edit both the body of the function and the return line of the function, which are both marked by "TO-DO" comments. 
After editing the script, run it to see if you correctly fixed things. 
If you are successful, you will see `'Success!'` printed out.

::::::::::::::::::::::::::::::::::::: solution

## Solution

```python
def get_size(w, h, d):
    """This function calculates the
    surface area and volume of any
    given box of width "w", height
    "h", and depth "d"."""
    area = (2 * d * w) + (2 * d * h) + (2 * w * h)
    vol = w * h * d
    box_list = [area, vol]
    return box_list


# Test the get_size function for a couple box sizes
box_1 = get_size(w=1, h=1, d=1)
box_2 = get_size(w=4, h=2, d=6)
# Check to see if you are correct
print("Area and volume of 1x1x1 box: ", box_1)
print("Area and volume of 4x2x6 box: ", box_2)

if (box_1 == [6, 1]) and (box_2 == [88, 48]):
    print("Success!")
else:
    print("Try again!")
    print("You should get [6,1] and [88,48]")
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Playing the Banjo

Who doesn't love the banjo? 
The objective of this challenge is to fill in the missing information of the `playing_banjo` function to figure out if someone knows how to play the banjo or not. 
More specifically, you want the function to print either NAME plays the banjo or NAME does not play the banjo based on a person's name. 
In this code-world, only names that begin with the letter "R" (lower case or upper case) know how to play the banjo. 
You will need to edit the if and elif statements in the body of the function to make sure things print out correctly (marked by the "TO-DO" comments). 
Note that the else statement is already correctly filled in. After editing the script, run it to see if you correctly fixed things. 

If you are successful, you will see this output:

```output
Leah does not play the banjo
michael does not play the banjo
brian does not play the banjo
Ryan plays the banjo
rolf plays the banjo
```

::::::::::::::::::::::::::::::::::::: solution

## Solution

```python
def playing_banjo(name):
    """This function checks to see if someone plays
    the banjo based on their name. Names beginning
    with "R" or "r" play the banjo, while others do not."""
    if name[0] == "r":
        banjo = name + " plays the banjo"
    elif name[0] == "R":
        banjo = name + " plays the banjo"
    else:
        banjo = name + " does not play the banjo"
    return print(banjo)


# Test cases to see if you are correct
playing_banjo("Leah")
playing_banjo("michael")
playing_banjo("brian")
playing_banjo("Ryan")
playing_banjo("rolf")
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Counting the Sheep

Who doesn't love sheep? 
The objective of this challenge is to fill in the missing information of the `count_sheeps` function to count the number of "True" entries in a list. 
Each "True" entry in the list represents one single sheep in this universe. 
You will only need to edit one line of the body of the function, marked by the "TO-DO" comment. 
After editing the script, run it to see if you correctly fixed things (the function should be able to detect 17 sheep). 
If you are successful, you will see `'Success!'` printed out.

::::::::::::::::::::::::::::::::::::: solution

```python
def count_sheeps(sheep):
    """This function loops over the entire sheep
    array and adds up all the values"""
    size_sheep = len(sheep)
    count = 0
    for i in range(0, size_sheep):
        count = count + sheep[i]

    return count


# Our flock of "sheep" list
flock = [
    True,
    True,
    True,
    False,
    True,
    True,
    True,
    True,
    True,
    False,
    True,
    False,
    True,
    False,
    False,
    True,
    True,
    True,
    True,
    True,
    False,
    False,
    True,
    True,
]
# Call the count_sheeps function
flock_count = count_sheeps(flock)
# Check to see if you are correct
print("You counted this many sheep: ", flock_count)
if flock_count == 17:
    print("There are 17 sheep! Success!")
else:
    print("Try again!")
    print("The sheep count should be 17")
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

## Finding the Needle
Who doesn't love needles in haystacks? 
The objective of this challenge is to fill in the missing information of the find_needle function so that it returns the position of "needle" in a given list. 
You will need to edit the body of the loop in the function and the return line of the function (both marked by "TO-DO" comments). 
Note that you will need to add more than one line in the body of the loop even though it's only marked by one "TO-DO" comment. 
After editing the script, run it to see if you correctly fixed things. 
If you are successful, you will see `'Success!'` printed out.

::::::::::::::::::::::::::::::::::::: solution

```python
def find_needle(haystack):
    """This function iterates through a list
    to find the "needle" string. The function
    then returns the index (position) in the
    list where it found "needle"."""
    dummy_index = 0
    for entry in haystack:
        if entry == "needle":
            index = dummy_index
        else:
            dummy_index = dummy_index + 1

    return index


# Create a couple "haystack" lists to be searched through and tested
hay_list_1 = [
    "283497238987234",
    "a dog",
    "a cat",
    "some random junk",
    "a piece of hay",
    "needle",
    "something somebody lost a while ago",
]
hay_list_2 = [
    "Python is cooler than C++",
    "needle",
    "Fortran is also cool",
    "blah",
    "summit",
    "rhea",
    "andes",
    "titan",
]
# Call the find_needle function, set result to a variable
needle_pos_1 = find_needle(hay_list_1)
needle_pos_2 = find_needle(hay_list_2)
# Check to see if you are correct
print("Found the needle in the 1st haystack at position", needle_pos_1)
print("Found the needle in the 2nd haystack at position", needle_pos_2)
if (needle_pos_1 == 5) and (needle_pos_2 == 1):
    print("Success!")
else:
    print("Try again!")
    print("You should find them at position 5 and position 1")
```

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

