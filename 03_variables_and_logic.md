---
title: "Variables and Logic"
teaching: 20
exercises: 5
---

:::::::::::::::::::::::::::::::::::::: questions 

- How do you assign a value to a variable in Python?
- What are the rules for naming variables in Python?
- What are the main logical operators in Python and how do they work?


::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Understand how to assign values to variables in Python
- Learn the rules for naming variables in Python
- Understand and use the main logical operators in Python

::::::::::::::::::::::::::::::::::::::::::::::::

```python
if condition:
    print("Execute this block if condition is True")
```

```mermaid
flowchart LR
    accTitle: {if control flow}
    A{"Condition"}
    B("Code")
    C([Continue])
    A -- True --> B
    A -- False --> C
    B --> C
```

```python
if condition:
    print("Execute this block if condition is True")
else:
    print("Execute this block if condition is False")
```

```mermaid
flowchart LR
    accTitle: {if-else control flow}
    A{"Condition"}
    B("Code")
    C("Code")
    D([Continue])
    A -- True --> B
    A -- False --> C
    B --> D
    C --> D
```

```python
if condition:
    # A
    print("Execute this block if condition is True")
elif another_condition:
    # B
    print("Execute this block if another_condition is True")
else:
    # C
    print("Execute this block if condition is False")
```

```mermaid
flowchart LR
    accTitle: {if-elif-else control flow}
    X{"Condition"}
    Y{"Another<br/>Condition"}
    B1("A")
    D1("B")
    E1("C")
    F([Continue])
    X -- True --> B1
    X -- False --> Y
    Y -- True --> D1
    Y -- False --> E1
    B1 --> F
    D1 --> F
    E1 --> F
```
