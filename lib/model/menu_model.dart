class Manu {
  Manu({required this.img, required this.km, required this.name});
  final String img;
  final double km;
  final String name;
}

List manu = [
  Manu(
    img: 'assets/images/pizza.png',
    km: 2.1,
    name: 'Империя Пиццы',
  ),
  Manu(
    img: 'assets/images/navat.png',
    km: 1.4,
    name: 'Нават',
  ),
  Manu(
    img: 'assets/images/ekidos.png',
    km: 3.0,
    name: 'Эки дос',
  ),
  Manu(
    img: 'assets/images/lavash.png',
    km: 2.0,
    name: 'Lavash center',
  ),
];
