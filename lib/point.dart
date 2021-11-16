import 'dart:math';

class Point {
  final double _x;
  final double _y;
  final double _z;

  double get x => _x;
  double get y => _y;
  double get z => _z;

  Point(this._x, this._y, this._z);

  double distanceTo(Point another) {
    return sqrt(
        pow(x - another.x, 2) + pow(y - another.y, 2) + pow(z - another.z, 2));
  }

  // factory Point.zero() {
  //   return Point(0, 0, 0);
  // }
  const Point.origin()
      : _x = 0,
        _y = 0,
        _z = 0;

  const Point.oneOneOne()
      : _x = 1,
        _y = 1,
        _z = 1;
}

// Класс "треугольник"
class Triangle {
  final Point _p1;
  final Point _p2;
  final Point _p3;

  Point get p1 => _p1;
  Point get p2 => _p2;
  Point get p3 => _p3;

  Triangle(this._p1, this._p2, this._p3);

  double getSquare() {
    // площадь треугольника по формуле Герона
    final double a = p1.distanceTo(p2);
    final double b = p2.distanceTo(p3);
    final double c = p3.distanceTo(p1);
    final double p = (a + b + c) / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }
}
