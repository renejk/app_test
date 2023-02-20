class Nota {
  String letra;
  int rangeMin;
  int rangeMax;
  Nota({required this.letra, required this.rangeMin, required this.rangeMax});

  static plantilla() {
    return [
      Nota(letra: 'A', rangeMin: 19, rangeMax: 20),
      Nota(letra: 'B', rangeMin: 16, rangeMax: 18),
      Nota(letra: 'C', rangeMin: 13, rangeMax: 15),
      Nota(letra: 'D', rangeMin: 10, rangeMax: 12),
      Nota(letra: 'E', rangeMin: 1, rangeMax: 9),
    ];
  }
}
