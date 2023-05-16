import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            // topBar [search - favIcon - notification]
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                    style: TextStyle(
                      color: Color(0xff9098B1)),
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search Product',
                      prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff40BFFF),),
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                  color: Color(0xff9098B1),
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                  color: Color(0xff9098B1),
                ),
              ],
            ),

            // slider
            Container(
               child: CarouselSlider.builder(
                 itemCount: 4,
                 options: CarouselOptions(
                     height: 220,
                     autoPlay: true,
                   autoPlayInterval: Duration(seconds: 1),
                   enableInfiniteScroll: true,
                 ),
                 itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                 {
                   // if(itemIndex == 0){
                   //   return Container(
                   //     // width: 300,
                   //     child: Image.asset('assets/images/$itemIndex.png',
                   //       width: MediaQuery.of(context).size.width,
                   //     ),
                   //   );
                   // }
                   return Container(
                       // width: 300,
                       child: Image.asset('assets/images/$itemIndex.png',
                       width: MediaQuery.of(context).size.width,
                       ),
                     );
  }
               ),
            ),
          ],
        ),
      ),
    );
  }
}
