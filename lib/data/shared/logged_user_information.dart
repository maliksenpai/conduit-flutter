import 'package:conduit_flutter/model/user_information.dart';

class LoggedUserInformation{

  static final LoggedUserInformation _loggedUserInformation = LoggedUserInformation._internal();

  factory LoggedUserInformation(){
    return _loggedUserInformation;
  }

  LoggedUserInformation._internal();

  UserInformation? userInformation;


}