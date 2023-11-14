import sys


def main(args):
    count = len(args)
    print("CODE STARTED")
    print(count)
    with open("output.json", 'w') as file:
        file.write("output")


if __name__ == "__main__":
    main(sys.argv)

