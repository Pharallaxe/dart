int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  int n = 10; // Exemple pour calculer le 10ème nombre de Fibonacci
  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}