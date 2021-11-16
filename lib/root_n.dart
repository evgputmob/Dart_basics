extension RootN on num {
  double rootN(int n) {
    if (this < 0) {
      throw 'Only positive numbers are allowed';
    }
    if (n <= 0) {
      throw 'Argument must be positive';
    }

    double pow(double y, int k) {
      var res = 1.0;
      for (var i = 1; i <= k; i++) {
        res *= y;
      }
      return res;
    }

    const accuracy = 0.00001;
    const maxIterationCount = 50;
    double curX = 1;
    double nextX;
    double delta;
    int iterationCount = 0;

    do {
      nextX = ((n - 1) * curX + this / pow(curX, n - 1)) / n;
      delta = ((nextX - curX) < 0) ? (curX - nextX) : (nextX - curX);
      curX = nextX;
      iterationCount++;
      if (iterationCount > maxIterationCount) {
        throw 'Iteration count limit is exceeded';
      }
    } while (delta > accuracy);

    return curX;
  }
}
