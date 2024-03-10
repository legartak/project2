void execute2() {
    // 2) Використання лямбда-функцій, замикань
    print('\n2)');

    // Lambda
    final sumOf2 = (application1, application2) => application1 + application2;
    print(sumOf2(3, 4));

    // also i decided to make my implementation of square power
    // func as lambda
    final power2 = (number) => number * number;
    print(power2(5)); // expected 25
    print(power2(13)); // expected 169

    // Enclosure
    // nice example to show enclosure, to my mind, make another
    // math func, that will create func of multiplication of 2 nums:
    // param * what we passed on func creation stage.
    
    Function createMultiplicationFunc(int multiplicator1) {
      return (int multiplicator2) => multiplicator2 * multiplicator1;
    }

    var multiplyBy7 = createMultiplicationFunc(7);
    print(multiplyBy7(6)); // 7 * 6 => expected 42
}