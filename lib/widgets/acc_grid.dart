import 'package:accessory_jk_flutter/models/acc.dart';
import 'package:flutter/material.dart';

class AccGrid extends StatelessWidget {
  const AccGrid({Key? key, required this.accessories}) : super(key: key);
  final List<Acc> accessories;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7),
        delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                  color: accessories[index].bgColor.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 30,
                          offset: Offset(0, 10),
                        ),
                      ]),
                    ),
                    Image.asset('assets/${accData[index].imageName}',
                        height: 150),
                  ]),
                  Spacer(),
                  Text(
                    accData[index].name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    accData[index].price,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        }, childCount: accessories.length),
      ),
    );
  }
}
