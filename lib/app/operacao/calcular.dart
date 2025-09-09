double calcular(double num1, double num2, String op) {
  switch (op) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num1 / num2;
    case '%':
      return (num1 * num2) / 100;
    default:
      return 0.0;
  }
}
