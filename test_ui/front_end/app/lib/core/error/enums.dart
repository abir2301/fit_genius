enum LoginError {
  invalidEmailError,
  credentialsError,
}

List<LoginError> mapLoginErrorsFromMessages(List<String> messages) {
  List<LoginError> errors = [];
  if (messages.contains("These credentials do not match our records.") ||
      (messages.contains("The selected email is invalid.") &&
          !messages.contains("The email must be a valid email address."))) {
    errors.add(LoginError.credentialsError);
  }
  if (messages.contains("The email must be a valid email address.")) {
    errors.add(LoginError.invalidEmailError);
  }
  return errors;
}

List<String> mapUserMessagesFromLoginErrors(List<LoginError> errors) {
  List<String> messages = [];
  if (errors.contains(LoginError.credentialsError)) {
    messages.add('email_password_error');
  }
  if (errors.contains(LoginError.invalidEmailError)) {
    messages.add('invalid_email_error');
  }
  return messages;
}

enum RegisterError {
  takenEmailError,
  invalidEmailError,
  passwordConfirmationError,
  passwordLessError
}

List<RegisterError> mapRegisterErrorsFromMessages(List<String> messages) {
  List<RegisterError> errors = [];
  if (messages.contains("The email must be a valid email address.")) {
    errors.add(RegisterError.invalidEmailError);
  }
  if (messages.contains("The email has already been taken.")) {
    errors.add(RegisterError.takenEmailError);
  }
  if (messages.contains("The password confirmation does not match.")) {
    errors.add(RegisterError.passwordConfirmationError);
  }
  if (messages.contains("The password must be at least 8 characters.")) {
    errors.add(RegisterError.passwordLessError);
  }

  return errors;
}

List<String> mapUserMessagesFromRegisterErrors(List<RegisterError> errors) {
  List<String> messages = [];
  if (errors.contains(RegisterError.invalidEmailError)) {
    messages.add('invalid_email_error');
  }
  if (errors.contains(RegisterError.takenEmailError)) {
    messages.add('taken_email_error');
  }
  if (errors.contains(RegisterError.passwordConfirmationError)) {
    messages.add('passwords_match_error');
  }
  if (errors.contains(RegisterError.passwordLessError)) {
    messages.add('password_less_error');
  }

  return messages;
}

enum ProductError {
  notFoundError,
}

ProductError? getProductErrorFromStatusCode(int statusCode) {
  if (statusCode == 404) {
    return ProductError.notFoundError;
  }
  return null;
}

String? getUserMessageFromProductError(ProductError error) {
  if (error == ProductError.notFoundError) {
    return 'product_not_found';
  }
  return null;
}

enum UserInfoError {
  invalidAge,
  invalidHeight,
  invalidWeight,
  invalidGoal,
  invalidActivity_level,
  invalidGender,
  healthProblemError
}

List<UserInfoError> mapProfileErrorsFromMessages(List<String> messages) {
  List<UserInfoError> errors = [];
  if (messages.contains("Weight must be a number") ||
      messages.contains("weight is  invalid.")) {
    errors.add(UserInfoError.invalidWeight);
  }
  if (messages.contains("Gender must be male or female") ||
      messages.contains("gender is invalid.")) {
    errors.add(UserInfoError.invalidGender);
  }
  if (messages.contains("height must be a number") ||
      messages.contains("height is  invalid.")) {
    errors.add(UserInfoError.invalidHeight);
  }
  if (messages.contains("age must be a number") ||
      messages.contains("age is  invalid.")) {
    errors.add(UserInfoError.invalidAge);
  }
  if (messages.contains("goal  must be  gain or lost ") ||
      messages.contains("goal is invalid.")) {
    errors.add(UserInfoError.invalidGoal);
  }
  if (messages.contains("activity level   must be   or  ") ||
      messages.contains("activity_level  is  invalid.")) {
    errors.add(UserInfoError.invalidActivity_level);
  }
  if (messages.contains("invalid selected health problem .")) {
    errors.add(UserInfoError.healthProblemError);
  }
  return errors;
}

enum HpError {
  notFoundError,
}

HpError? getHpErrorFromStatusCode(int statusCode) {
  if (statusCode == 404) {
    return HpError.notFoundError;
  }
  return null;
}

String? getUserMessageFromHpError(ProductError error) {
  if (error == HpError.notFoundError) {
    return 'not_found_hp';
  }
  return null;
}

enum ProgramError {
  notFoundError,
}

ProgramError? getProgramErrorFromStatusCode(int statusCode) {
  if (statusCode == 404) {
    return ProgramError.notFoundError;
  }
  return null;
}

String? getUserMessageFromProgramError(ProgramError error) {
  if (error == ProgramError.notFoundError) {
    return 'program_not_found';
  }
  return null;
}

enum UserProgramError {
  notFoundError,
}

UserProgramError? getUserProgramErrorFromStatusCode(int statusCode) {
  if (statusCode == 404) {
    return UserProgramError.notFoundError;
  }
  return null;
}

String? getUserMessageFromUserProgramError(UserProgramError error) {
  if (error == ProductError.notFoundError) {
    return 'user_program_not_found';
  }
  return null;
}
