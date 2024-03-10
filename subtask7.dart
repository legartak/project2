execute7() {
    // 7) Робота з різними типами колекцій.
    // List
    List<int> listOfNums= [];
    if (listOfNums.isEmpty) {
        var nums = [1, 10, 169];
        listOfNums.addAll(nums);
    }
    print(listOfNums);
    print(listOfNums.length);

    listOfNums.removeAt(listOfNums.indexOf(10));

    print(listOfNums);

    // Set
    var setOfNums = <int>{};

    var someNums1 = [1, 6, 5, 5, 2];
    var someNums2 = [4, 1, 3, 6, 5, 7, 9];

    setOfNums.addAll(someNums1);
    print(setOfNums);

    setOfNums.addAll(someNums2);
    print(setOfNums);

    setOfNums.remove(6);
    print(setOfNums);

    if(setOfNums.contains(1)) {
        print('1 is in set, no doubt');
    }

    var anotherSet = {1, 2, 9};

    print(anotherSet.intersection(setOfNums));
    print(setOfNums.last);

    // Map
    var countryAbbreviations = <String, String>{};

    countryAbbreviations['Ukraine'] = 'UA';
    // countryAbbreviations.addEntries({'Great Britain': 'GB'}.entries); //=> ERROR

    print(countryAbbreviations);
    print(countryAbbreviations.keys);
    print(countryAbbreviations.containsKey('Great Britain'));
    // print(countryAbbreviations.first); // => ERROR
}