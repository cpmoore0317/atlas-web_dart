List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    double farenheit = (temp * 9 / 5) + 32;
    return double.parse(farenheit.toStringAsFixed(2));
  }).toList();
}
