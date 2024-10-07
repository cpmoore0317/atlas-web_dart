void outer(String name, String id) {
  String inner() {
    var splitName = name.split(' ');
    var firstName = splitName[0];
    var lastName = splitName[1];
    return 'Hello Agent ${lastName[0]}.$firstName your id is $id';
  }
  print(inner());
}
