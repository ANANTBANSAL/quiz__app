class Signup
{

  String _First_Name;
  String _Last_Name;
  String _Phone_Number;
  String _Email_Adddress;
  String _Password;

  String get First_Name => _First_Name;

  String get Password => _Password;

  set Password(String value) {
    _Password = value;
  }

  String get Email_Adddress => _Email_Adddress;

  set Email_Adddress(String value) {
    _Email_Adddress = value;
  }

  String get Phone_Number => _Phone_Number;

  set Phone_Number(String value) {
    _Phone_Number = value;
  }

  String get Last_Name => _Last_Name;

  set Last_Name(String value) {
    _Last_Name = value;
  }

  set First_Name(String value) {
    _First_Name = value;
  }
}