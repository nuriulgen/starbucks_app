class ValidateEmptyException implements Exception {
  @override
  String toString() {
    return 'This field cannot be empty.'; // for use textfield validate
  }
}
