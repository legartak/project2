void execute1() {
    //1) Оператори "синтаксичного цукру"
    print('1)');

    // 1.1 Null-aware dot operator
    String? word = 'rhinoceros';
    print(word.length);
    word = null;
    // print(word.length); => ERROR
    print(word?.length);

    // 1.2 Null-aware coalescing operator
    int? year;
    print(year ?? 1992);

    // 1.3 Null-aware assignment operator
    String? country;
    country ??= 'South Africa';
    print(country);

    // 1.4 Ternary operator
    print(24 > 25 ? 'Math was wrong all the time' : 'Everything is OK');

    // 1.5 Spread operator
    var oneListOfNums = [1, 9 , 158];
    var anotherListOfNums = [16, 28, 88];

    var allNums = [...oneListOfNums, ...anotherListOfNums];
    print(allNums);
}