# loops_03.py


def main():
    # iterate only while "x" is less than "y"
    print("Example 3.1: while x < y")
    x = 0
    y = 5
    while x < y:
        print("x equals", x)
        x = x + 1

    print(" ")

    # iterate until "z" equals 6
    print("Example 3.2: while z != 6")
    z = 0
    while z != 6:
        print("Am I 6 yet?", "Nope, I am", z)
        z = z + 1


if __name__ == "__main__":
    main()
