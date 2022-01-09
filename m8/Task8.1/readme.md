# Task 8.1


### Я открыто выражаю свой протест против применения пыток алгеброй на простых людях!!!

## Code of solv_square_equation.py:

```
#!/usr/bin/env python3

import math

def validate_param():
    attepmts = 3
    while attepmts > 0:
        try:
            print(f'you have {attepmts} attepmts')
            a = float(input("Enter value for a: "))
            b = float(input("Enter value for b: "))
            c = float(input("Enter value for c: "))
        except ValueError:
            print("Value is not integer!")
            attepmts -= 1
            continue
        else:
            return a, b, c


def discriminant(a, b, c):
    discr = b ** 2 - 4 * a * c
    return discr


def roots(discr, a, b, c):
    if discr > 0:
        x1 = (-b + math.sqrt(discr)) / (2 * a)
        x2 = (-b - math.sqrt(discr)) / (2 * a)
        print("x1 = %.2f \nx2 = %.2f" % (x1, x2))
        return x1, x2
    elif discr == 0:
        x = -b / (2 * a)
        print("x = %.2f" % x)
        return x
    else:
        print("Equation no have roots")



def solv_square(a, b, c) -> roots:
    discr = discriminant(a, b, c)
    root = roots(discr, a, b, c)
    print("Discriminant =", discr)
    return root

def square_print(a, b, c, roots):
    print("a =", a)
    print("b =", b)
    print("c =", c)
    roots


def main():
    print("Please enter values for equation:")
    valid_params = validate_param()
    a = valid_params[0]
    b = valid_params[1]
    c = valid_params[2]
    solv_square(a, b, c)
    square_print(a, b, c, roots)


if __name__ == "__main__":
    main()


```

### Code of unit_test.py:
```
import unittest
import solv_square_equation


class MyTest(unittest.TestCase):
    def test_discriminant(self):
        self.assertEqual(solv_square_equation.discriminant(24, 580, 45), 332080)

    def test_solv_square(self):
        self.assertEqual(solv_square_equation.solv_square(24, 580, 45), (-0.07783690692744945, -24.088829759739216))

    def test_roots(self):
        self.assertEqual(solv_square_equation.roots(332080, 24, 580, 45), (-0.07783690692744945, -24.088829759739216))
        self.assertEqual(solv_square_equation.roots(0, 2, 4, 2), (-1))
        self.assertEqual(solv_square_equation.roots(-32, 2, 4, 6), (None))

if __name__ == '__main__':
    unittest.main()
```

### Code of ethalon program from the internet:

```
import math

#def main(a,b,c):
print("Введите переменные для уравнения:")
print("ax^2 + bx + c =  0")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))


discr = b ** 2 - 4 * a * c
print("Дискриминант = %.2f" % discr)

if discr > 0:
    x1 = (-b + math.sqrt(discr)) / (2 * a)
    x2 = (-b - math.sqrt(discr)) / (2 * a)
    print("x1 = %.2f \nx2 = %.2f" % (x1, x2))
elif discr == 0:
    x = -b / (2 * a)
    print("x = %.2f" % x)
else:
    print("Корней нет")
```







# Used information sources:

## 1) [Python Functions](https://otus.ru/nest/post/1107/) - https://otus.ru/nest/post/1107/

## 2) [Stackoverflow](https://ru.stackoverflow.com/questions/623503/%D0%9E%D1%88%D0%B8%D0%B1%D0%BA%D0%B0-%D0%BF%D1%80%D0%B8-%D0%BF%D0%B0%D1%80%D1%81%D0%B8%D0%BD%D0%B3%D0%B5-python-indentationerror-expected-an-indented-block) - https://ru.stackoverflow.com/questions/623503/%D0%9E%D1%88%D0%B8%D0%B1%D0%BA%D0%B0-%D0%BF%D1%80%D0%B8-%D0%BF%D0%B0%D1%80%D1%81%D0%B8%D0%BD%D0%B3%D0%B5-python-indentationerror-expected-an-indented-block

## 3) [Square equation in Python](https://younglinux.info/python/task/quadratic) - https://younglinux.info/python/task/quadratic

## 4) [Square equation in Python2](https://all-python.ru/primery/kvadratnoe-uravnenie.html) - https://all-python.ru/primery/kvadratnoe-uravnenie.html

## 5) [cyberforum](https://www.cyberforum.ru/python-beginners/thread2538693.html) - https://www.cyberforum.ru/python-beginners/thread2538693.html