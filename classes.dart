class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor
  Spacecraft(this.name, this.launchDate);

  // Named constructor
  Spacecraft.unlaunched(this.name);

  // Method
  void describe() {
    print('Spacecraft: $name');

    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate!).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

}
