import unittest
import solv_square_equation


class MyTest(unittest.TestCase):
    def test_discriminant(self):
        self.assertEqual(solv_square_equation.discriminant(24, 580, 45), 332080)

    def test_solv_square(self):
        self.assertEqual(solv_square_equation.solv_square(24, 580, 45), (-0.07783690692744945, -24.088829759739216))

    def test_roots(self):
        self.assertEqual(solv_square_equation.roots(332080, 24, 580, 45), (-0.07783690692744945, -24.088829759739216))


if __name__ == '__main__':
    unittest.main()
