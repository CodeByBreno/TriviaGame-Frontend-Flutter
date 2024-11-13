String get_letter(int number) {
  final letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'];

  if (number > letters.length) {
    print("ATENÇÃO! NÚMERO SOLICITADO NÃO TEM LETRA EQUIVALENTE. POSSÍVEL ERRO NO CÓDIGO");
    return '';
  }

  return letters[number];
}