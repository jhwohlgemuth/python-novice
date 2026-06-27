---
title: Requirements
---

[Python](https://www.python.org/) is an "interpreted"[^def], object-oriented, imperative, high-level, multi-paradigm programming language. As opposed to a compiled language like Fortran or C, an "interpreted" language like Python is a programming language which executes code without the need to first compile a program into "machine-language". Since there is no compilation step, the testing and debugging cycle is quite fast.

Python has become one of the most popular programming languages in the world in recent years. Python's simple, easy to learn syntax emphasizes readability, so it is one of the "easier" languages to learn when beginning to program. It can be used for machine learning, website development, data science, task automation, and much more. In high-performance computing, Python is heavily used to analyze scientific data on the system.

This lesson is meant to give you experience with some of the basic foundation of the Python language. There is much more to Python than what is included in this lesson, but what is provided will hopefully set you on the right path. We will specifically be using "Python 3" syntax in this lesson (as opposed to "Python 2"). For additional help and topics, be sure to check out the [Reference](./reference.md) section.

::::::::::::::::::::::::::::::::::::: prereq

You need to understand how to use the command line, have an editor (e.g., neovim, VS Code, etc.) installed on your system, and have Python installed on your computer. If you do not have Python installed, please follow the instructions in the [Software Setup](#software-setup) section below.

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::: discussion

### Software Requirements

This lesson requires Python (version 3.10 or newer recommended) along with a interactive shell environment and a text editor.

Check your Python version by running the following command(s) in your terminal:

::::::::::::::::::::::::::::::::::::: tab

### Python

```bash
python --version
```

### uv

```bash
uv --version
uv run python --version
```

:::::::::::::::::::::::::::::::::::::::::::::::::::

For more information about using the `uv` command, see the [Python Programming with uv](https://ornl-training.github.io/python-with-uv/index.html) lesson.

:::::::::::::::::::::::::::::::::::::::::::::::::::


## Download Practice Scripts

<!--
FIXME: place any data you want learners to use in `episodes/data` and then use
       a relative link ( [data zip file](data/lesson-data.zip) ) to provide a
       link to it, replacing the example.com link.
-->
Download the [lesson scripts archive](data/scripts.7z) and unzip it to your Desktop

---

[^def]: An "interpreted" language means that the code is executed directly by an interpreter, without a separate compilation step. This allows for faster development and testing cycles, as you can run code immediately without waiting for a compilation process. As such, interpreted languages are often favored for scripting, rapid prototyping, and interactive use. Calling Python an "interpreted" language is a simplification, as it actually compiles code to bytecode before execution, but the key point is that this process is transparent to the user and does not require a separate compilation step.