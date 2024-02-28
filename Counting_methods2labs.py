import math

EPS = 10e-6

def func(x):
    J = 1
    F = J
    i = 0
    while abs(J) > EPS:
        J *= -(x * x) / (4 * (i + 1) * (i + 1))
        F += J
        i += 1
    return F

def J(a, b, x, func_id):
    Jn = -1
    DIFF = 0
    n = 2
    while abs(DIFF - Jn) >= EPS:
        DIFF = Jn
        interval = (b - a) / n
        t = [a + i * interval for i in range(n + 1)]

        Jn = 0
        h = 0
        if func_id == 0 or func_id == 1 or func_id == 2:
            h = (b - a) / n

        if func_id == 0:
            for i in range(1, n + 1):
                Jn += F(t[i], x)
            Jn *= h
        elif func_id == 1:
            for i in range(1, n):
                Jn += F(t[i], x)
            Jn = h * ((F(t[0], x) + F(t[n], x)) / 2.0 + Jn)
        elif func_id == 2:
            for i in range(1, n + 1):
                Jn += F(t[i - 1], x) + 4 * F((t[i - 1] + t[i]) / 2, x) + F(t[i], x)
            Jn *= h / 6.0
        elif func_id == 3:
            for i in range(n):
                h = t[i + 1] - t[i]
                Jn += h / 2.0 * (F(t[i] + h / 2.0 * (1 - 1 / math.sqrt(3)), x) +
                                 F(t[i] + h / 2.0 * (1 + 1 / math.sqrt(3)), x))

        n *= 2

    N = n // 2
    Jn = 1.0 / math.pi * Jn
    return Jn, N

def F(t, x):
    return math.cos(x * math.cos(t))

def main():
    a, b = 0, math.pi
    h = 0.3
    J0 = [func(i * h) for i in range(11)]

    for func_id in range(4):
        if func_id == 0:
            print("\nLeft\n")
        elif func_id == 1:
            print("\nCentral\n")
        elif func_id == 2:
            print("\nSimpson\n")
        elif func_id == 3:
            print("\nGauss\n")

        print("X\tJ_0(x)\t\t\t\tJ_N(x)\t\t\t\tJ_0(x)-J_N(x)\t\tN")
        j = 0
        for x in [i * 0.3 for i in range(int(3 / 0.3) + 1)]:
            print(f"{x:.1f}\t{J0[j]:.16f}\t", end='')
            DIFF, N = J(a, b, x, func_id)
            print(f"{DIFF:.16f}\t{abs(J0[j] - DIFF):.16f}\t{N}")
            j += 1

if __name__ == "__main__":
    main()
