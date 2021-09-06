class ListOfData {
  ListOfData({required this.id, required this.name, required this.img});
  final int id;
  final String name, img;
}

List<ListOfData> listdata = [
  ListOfData(id: 1, name: "Hotel", img: "assets/png/hotel.jpg"),
  ListOfData(id: 2, name: "Parking", img: "assets/png/parking.png"),
  ListOfData(id: 3, name: "Restaurant", img: "assets/png/restaurant.png"),
  ListOfData(id: 4, name: "Parc", img: "assets/png/parc.png"),
  ListOfData(id: 5, name: "Rent", img: "assets/png/rent.png"),
  ListOfData(id: 6, name: "Studuim", img: "assets/png/staduim.png"),
  ListOfData(id: 7, name: "Consult", img: "assets/png/consult.png"),
  ListOfData(id: 8, name: "Shopping-cart", img: "assets/png/shopping-cart.png"),
  ListOfData(id: 9, name: "Plus", img: "assets/png/plus.png"),
];
