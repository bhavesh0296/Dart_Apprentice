Function multiply = (int a, int b) {
  return a * b;
};

void namedFunction(Function anonymousFunction) {
  // function body
}

Function namedFunctionReturn() {
  return () => print('Hello');
}
