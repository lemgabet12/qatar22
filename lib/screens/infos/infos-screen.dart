import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qatar22/screens/infos/info-detail/info-details.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({Key? key}) : super(key: key);

  Widget cards(image, title, context) {
    return GestureDetector(
        onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InfoDetails(route: title)),
              )
            },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: SvgPicture.asset(image,
                        width: 100.0, height: 100.0, fit: BoxFit.cover)),
                SizedBox(
                  height: 2,
                ),
                Text(title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards('icons/hotel.svg', 'Hotels', context),
                        cards('icons/stadium.svg', 'Stadiums', context),
                        cards('icons/restaurant.svg', 'Restaurants', context),
                        cards('icons/parking.svg', 'Parkings', context),
                        cards('icons/shopping-cart.svg', 'Shopping', context),
                        cards('icons/parc.svg', 'Parcs', context),
                        cards('icons/rent.svg', 'Rent Cars', context),
                        cards('icons/consult.svg', 'Services', context),
                        cards('icons/plus.svg', 'More', context)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
