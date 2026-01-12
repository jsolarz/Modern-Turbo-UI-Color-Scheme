// C Reference File for Theme Testing

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.14159
#define SQUARE(x) ((x) * (x))

typedef struct {
    double x;
    double y;
} Point;

double distance(Point a, Point b) {
    return sqrt(SQUARE(a.x - b.x) + SQUARE(a.y - b.y));
}

int main(void) {
    Point p1 = {0, 0};
    Point p2 = {3, 4};

    printf("Distance: %.2f\n", distance(p1, p2));

    for (int i = 0; i < 5; i++) {
        printf("i = %d\n", i);
    }

    return 0;
}
