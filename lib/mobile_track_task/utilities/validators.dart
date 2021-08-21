class Validator {
  Validator._();
  static Validator validate = Validator._();

  // This function checks or ensures the text form
  // fields are not submitted empty.
  String? notEmptyField(String? input, [String? error]) {
    if (input == null || input.isEmpty)
      return error == null ? 'This field cannot be empty' : '$error';
    else
      return null;
  }
}
