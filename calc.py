import sys


def add(a: float, b: float) -> float:
    return a + b


def main() -> None:
    if len(sys.argv) != 3:
        print("Использование: python calc.py <a> <b>")
        sys.exit(1)
    a, b = float(sys.argv[1]), float(sys.argv[2])
    print(f"{a} + {b} = {add(a, b)}")


if __name__ == "__main__":
    main()