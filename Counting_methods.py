# import math
#
# a, b, h = 0, 3, 0.3
# e = 1e-6
# x = a
# result_table = []
#
# while x <= b:
#     result = 0
#     term = 1
#     n = 0
#     while abs(term) > e:
#         result += term
#         term *= -(x**2/4) / ((n + 1)**2)
#         n += 1
#
#     result_table.append((x, result))
#     x += h
#
    # print("x\tCi(x)")
    # for x, integral in result_table:
    #     print(f"{x:.1f}\t{integral:.6f}")

import math

a, b = 0, 3
n = 6
m = 11
h_n = (b - a) / (n - 1)
h_m = (b - a) / (m - 1)
e = 1e-6

x = a
result_table = []

while x <= b:
    result = 0
    term = 1
    N = 0
    while abs(term) > e:
        result += term
        term *= -(x**2/4) / ((N + 1)**2)
        N += 1

    result_table.append((x, result))
    x += h_m


# интерполяционный полином по 6 узлам и вычисление его в 11 равных точках
def lagrange_interpolation(x, x_vals, y_vals):
    result = 0

    for i in range(0, 2 * n, 2):
        term = y_vals[i]
        for j in range(0, 2 * n, 2):
            if i != j:
                term *= (x - x_vals[j]) / (x_vals[i] - x_vals[j])
        result += term

    return result


print("\nx\tCi(x)\t\tInterpolation\tError")
for x, function in result_table:
    interpolated_value = lagrange_interpolation(x, [xi for xi, _ in result_table], [yi for _, yi in result_table])
    error = abs(function - interpolated_value)
    print(f"{x:.1f}\t{function:.6f}\t{interpolated_value:.6f}\t{error:.6f}")


# import math

def chebyshev_points(a, b, n):
    points = []
    for i in range(1, n + 1):
        # x_i = (a + b) / 2 + (b - a) / 2 * math.cos((2 * i - 1) * math.pi / (2 * n))
        x_i = (b-a)/2 * math.cos(2*i + 1)*math.pi/(2*n+2) + (b+a)/2
        points.append(math.fabs(x_i))
    return points

a = 1
b = result_table[-1][1]
b = 3
x_i = a
n = 65
while (x_i <= b):
    chebyshev_points_65 = chebyshev_points(a, b, n)
print('\n\n\n')
print(*chebyshev_points_65, sep='\n')




