// Java Reference File for Theme Testing

import java.util.*;

class Point {
    double x, y;

    Point(double x, double y) {
        this.x = x; this.y = y;
    }

    double distance(Point other) {
        return Math.hypot(x - other.x, y - other.y);
    }
}

public class ThemeTest {
    public static void main(String[] args) {
        Point p1 = new Point(0, 0);
        Point p2 = new Point(3, 4);

        System.out.println("Distance: " + p1.distance(p2));

        List<Integer> nums = Arrays.asList(1, 2, 3);
        nums.forEach(System.out::println);
    }
}
