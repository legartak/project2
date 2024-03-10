void execute4() {
    // 4) Різні варіанти конструкторів:
    print('\n4)');
    
    // 4.1) Фабричний конструктор
    DriverLicense lic1 = DriverLicense(2000, 'C1'); // will be created
    print(lic1);
    // DriverLicense lic2 = DriverLicense(2008, 'B1'); // ERROR!

    // 4.2) Конструктор ініціалізації 
    DriverLicense lic3 = DriverLicense.issueLicense(1992, 'B1');
    print(lic3);
}

class DriverLicense {
  final int yearOfBirth;
  final int yearsWhenIssued;
  final String licenseType;

  DriverLicense.issueLicense(this.yearOfBirth, this.licenseType) : yearsWhenIssued = DateTime.now().year - yearOfBirth;

  factory DriverLicense(yearOfBirth, licenseType) {
    if (DateTime.now().year - yearOfBirth < 18) {
      throw Exception('You are too young for issuing drivers license!');
    }
    return DriverLicense.issueLicense(yearOfBirth, licenseType);
  }

  @override
  String toString() {
    return 'Year of Birth: $yearOfBirth. License Type: $licenseType';
  }
}