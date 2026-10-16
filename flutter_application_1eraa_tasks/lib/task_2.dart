void main() {
  print(greetUser("mariam"));
  print(greetUser("shady", "Hello!"));
}

String greetUser(String name, [String greeting = "Hello"]) {
  return "$greeting $name";

  //"$name $greeting";
}
