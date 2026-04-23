class CustomValidators {
  
  static String? validateTaskTitle(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a task title';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }
    else if(!RegExp(r'^\d{11}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number';
    }
    return null;
  }

  static String? validateAssignedTo(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the name of the person assigned to the task';
    }
    return null;
  }


  static String? validateDescription(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a task description';
    }

    if(value.length < 10) {
      return 'Description must be at least 10 characters long';
    }
    return null;
  }




}