---
title: Setup
---

[Python](https://www.python.org/) is an interpreted, object-oriented, high-level programming language. As opposed to a compiled language like Fortran and C, an interpreted language is a programming language which executes code without the need to previously compile a program into "machine-language". Since there is no compilation step, the testing and debugging cycle is quite fast.

Python has become one of the most popular programming languages in the world in recent years. Python's simple, easy to learn syntax emphasizes readability, so it is one of the "easier" languages to learn when beginning to program. It can be used for machine learning, website development, data science, task automation, and much more. In high-performance computing, Python is heavily used to analyze scientific data on the system.

This lesson is meant to give you experience with some of the basic foundation of the Python language. There is much more to Python than what is included in this lesson, but what is provided will hopefully set you on the right path. We will specifically be using "Python 3" syntax in this lesson (as opposed to "Python 2"). For additional help and topics, be sure to check out the [Reference](./reference.md) section.

::::::::::::::::::::::::::::::::::::: prereq

You need to understand how to use command line tools (e.g., vim or neovim), have an editor (ex. VS Code) installed on your system, and have Python installed on your computer. If you do not have Python installed, please follow the instructions in the [Software Setup](#software-setup) section below.

::::::::::::::::::::::::::::::::::::::::::::::::

## Data Sets

<!--
FIXME: place any data you want learners to use in `episodes/data` and then use
       a relative link ( [data zip file](data/lesson-data.zip) ) to provide a
       link to it, replacing the example.com link.
-->
Download the [data zip file](https://example.com/FIXME) and unzip it to your Desktop


## Software Setup

::::::::::::::::::::::::::::::::::::::: discussion

### Details

This lesson requires Python (version 3.9 or newer recommended) along with `pip` for package management. You will use a terminal environment to run Python commands and install dependencies.

You can verify an existing installation with:

- `python3 --version`
- `pip3 --version`

If Python is not installed or is outdated, follow the platform-specific instructions below.

:::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::: spoiler

### Windows

1. Download Python from the official site: https://www.python.org/downloads/windows/
2. Run the installer.
3. **Important:** Check the box “Add Python to PATH” before installing.
4. Choose “Install Now.”

Verify installation in Command Prompt or PowerShell:
- `python --version`
- `pip --version`

Optional (recommended for dev workflows):
- Install Windows Terminal for better shell experience.
- Use `venv` for virtual environments:
  - `python -m venv .venv`
  - `.venv\Scripts\activate`

::::::::::::::::::::::::

:::::::::::::::: spoiler

### MacOS

Python 3 may already be installed, but it is often outdated. Recommended approach is via Homebrew.

1. Install Homebrew if not present:
   - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Install Python:
   - `brew install python`

Verify installation:
- `python3 --version`
- `pip3 --version`

Set up a virtual environment:
- `python3 -m venv .venv`
- `source .venv/bin/activate`

Notes:
- Avoid relying on the system Python (`/usr/bin/python`).
- Homebrew installs Python under `/opt/homebrew` (Apple Silicon) or `/usr/local` (Intel).

::::::::::::::::::::::::

:::::::::::::::: spoiler

### Linux

Most distributions either include Python or provide it via package managers.

#### Debian/Ubuntu
- `sudo apt update`
- `sudo apt install python3 python3-pip python3-venv`

#### Fedora/RHEL
- `sudo dnf install python3 python3-pip`

#### Arch Linux
- `sudo pacman -S python python-pip`

Verify installation:
- `python3 --version`
- `pip3 --version`

Set up a virtual environment:
- `python3 -m venv .venv`
- `source .venv/bin/activate`

Notes:
- Some systems alias `python` → `python3`, but not all—prefer explicit `python3`.
- For containerized workflows, consider using a base image like `python:3.11-slim`.

::::::::::::::::::::::::

