---
title: Setup
---

[Python](https://www.python.org/) is an "interpreted"[^def], object-oriented, imperative, high-level, multi-paradigm programming language. As opposed to a compiled language like Fortran or C, an "interpreted" language like Python is a programming language which executes code without the need to first compile a program into "machine-language". Since there is no compilation step, the testing and debugging cycle is quite fast.

Python has become one of the most popular programming languages in the world in recent years. Python's simple, easy to learn syntax emphasizes readability, so it is one of the "easier" languages to learn when beginning to program. It can be used for machine learning, website development, data science, task automation, and much more. In high-performance computing, Python is heavily used to analyze scientific data on the system.

This lesson is meant to give you experience with some of the basic foundation of the Python language. There is much more to Python than what is included in this lesson, but what is provided will hopefully set you on the right path. We will specifically be using "Python 3" syntax in this lesson (as opposed to "Python 2"). For additional help and topics, be sure to check out the [Reference](./reference.md) section.

::::::::::::::::::::::::::::::::::::: prereq

You need to understand how to use the command line, have an editor (e.g., neovim, VS Code, etc.) installed on your system, and have Python installed on your computer. If you do not have Python installed, please follow the instructions in the [Software Setup](#software-setup) section below.

::::::::::::::::::::::::::::::::::::::::::::::::

## Scripts

<!--
FIXME: place any data you want learners to use in `episodes/data` and then use
       a relative link ( [data zip file](data/lesson-data.zip) ) to provide a
       link to it, replacing the example.com link.
-->
Download the [lesson scripts archive](data/scripts.7z) and unzip it to your Desktop


## Software Setup

::::::::::::::::::::::::::::::::::::::: discussion

### Details

This lesson requires Python (version 3.10 or newer recommended) along with `pip` for package management. You will use a terminal environment to run Python commands and install dependencies.

You can verify an existing installation with:

- `python3 --version`
- `pip3 --version`

If Python is not installed or is outdated, follow the platform-specific instructions below.

:::::::::::::::::::::::::::::::::::::::::::::::::::

::: tab

### Windows

1. Download Python from the official site: https://www.python.org/downloads/windows/
2. Run the installer.
3. **Important:** Check the box “Add Python to PATH” before installing.
4. Choose “Install Now.”

Optional (recommended for dev workflows):
- Install Windows Terminal for better shell experience

### Mac

Python 3 may already be installed, but it is often outdated. Recommended approach is via Homebrew.

1. Install Homebrew if not present:
   - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Install Python:
   - `brew install python`

Notes

  - Avoid relying on the system Python (`/usr/bin/python`).
  - Homebrew installs Python under `/opt/homebrew` (Apple Silicon) or `/usr/local` (Intel).

### Debian/Ubuntu
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
```

### Fedora/RHEL
```bash
sudo dnf install python3 python3-pip
```

### Arch Linux
```bash
sudo pacman -S python python-pip
```

:::

::::::::::::::::::::::::::::::::::::::: caution

  - Some systems alias `python` → `python3`, but not all. You should prefer explicit `python3`.
  - For containerized workflows, consider using a base image like `python:3.13.14-trixie`.

:::::::::::::::::::::::::::::::::::::::::::::::::::

Verify installation
```bash
python3 --version
pip3 --version
```

**OPTIONAL**: Set up a virtual environment
```bash
python3 -m venv .venv
source .venv/bin/activate
```

[^def]: An "interpreted" language means that the code is executed directly by an interpreter, without a separate compilation step. This allows for faster development and testing cycles, as you can run code immediately without waiting for a compilation process. As such, interpreted languages are often favored for scripting, rapid prototyping, and interactive use. Calling Python an "interpreted" language is a simplification, as it actually compiles code to bytecode before execution, but the key point is that this process is transparent to the user and does not require a separate compilation step.