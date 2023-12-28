
double power_of(double num, int exponent) {

  double result = 1;
  for (int i = 0; i < exponent; i++) {
    result = result * num;
  }

  return result;
}

bool is_prime(int num) {

  for (int i = 2; i < num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

