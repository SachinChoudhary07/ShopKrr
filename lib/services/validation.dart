// ignore_for_file: prefer_is_empty, curly_braces_in_flow_control_structures, unnecessary_new

String? validateName(String? value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(pattern);
  if (value?.length == 0) {
    return 'Name is required';
  } else if (!regExp.hasMatch(value ?? '')) {
    return 'Name must be valid';
  }
  return null;
}

String? validateOthers(String? value) {
  if (value?.length == 0) {
    return '*required';
  }
  return null;
}

String? validateMobile(String? value) {
  String pattern = r'(^\+?[0-9]*$)';
  RegExp regExp = RegExp(pattern);
  if (value?.length == 0) {
    return 'Mobile is required';
  } else if (!regExp.hasMatch(value ?? '')) {
    return 'Mobile Number must be digits';
  }
  /*else if(value!.length<10 || value.length>10 ){
  return 'please enter valid number';
  }*/
  return null;
}

String? validatePassword(String? value) {
  if ((value?.length ?? 0) < 6)
    return 'Password length must be more than 6 chars.';
  else
    return null;
}

String? validateEmail(String? value) {
  String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value ?? ''))
    return 'Please use a valid mail';
  else
    return null;
}

String? validateConfirmPassword(String? password, String? confirmPassword) {
  if (password != confirmPassword) {
    return 'Password must match';
  } else if (confirmPassword?.length == 0) {
    return 'Confirm password is required';
  } else {
    return null;
  }
}

String? validateEmptyField(String? text) => text == null || text.isEmpty ? "notBeEmpty" : null;
