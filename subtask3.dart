void execute3() {
    // 3) Використання параметрів за замовчуванням 
    print('\n3)');

    displayTextInfo('Hello, that\'s me');
    displayTextInfo('That\'s second call of this func', additionalInfo: 'And this second param with another argument');
}

void displayTextInfo(String text, {String additionalInfo = 'This stirng is default parameter'}) {
    print('$text. $additionalInfo.');
}