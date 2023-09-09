class Gizmo {
  final MapBuilder builder;
  Gizmo({
    required this.builder,
  });
}

typedef MapBuilder = Map<String, int> Function(List<int>);
