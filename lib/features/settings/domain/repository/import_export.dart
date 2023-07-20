abstract class Export {
  Future<String> export();
}

abstract class Import {
  Future<bool> import();
}
