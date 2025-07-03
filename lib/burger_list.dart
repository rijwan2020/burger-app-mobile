import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    Widget Burger1Image = Container(
      height: 160,
      child: Image.asset("images/burger-1.png"),
    );
    Widget Burger2Image = Container(
      height: 125,
      child: Image.asset("images/burger-2.png"),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: index == (item - 1) ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // TODO Navigate
                    },
                    child: Card(
                      color: Theme.of(context).cardColor,
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              "Burger",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "Rp15.000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 70 : 50,
                  child: GestureDetector(
                    onTap: () {
                      // TODO navigate
                    },
                    child: reverse ? Burger2Image : Burger1Image,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
