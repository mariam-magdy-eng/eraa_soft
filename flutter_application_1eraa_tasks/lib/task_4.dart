List<int> filterNumbers({
  required List<int> numbers,
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  return numbers.where((number) {
    bool numberbetween = number >= min && number <= max;
    bool matcheven = includeEven ? (number % 2 == 0) : true;
    return numberbetween && matcheven;
  }).toList();
}

void main() {
  print(filterNumbers(numbers: [20, 30, 100, 15, 75, 87, 60]));
  print(
    filterNumbers(
      numbers: [20, 30, 100, 15, 75, 87, 60],
      max: 200,
      min: 30,
      includeEven: false,
    ),
  );
}
