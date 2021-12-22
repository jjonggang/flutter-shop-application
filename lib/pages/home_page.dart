import 'package:accessory_jk_flutter/models/acc.dart';
import 'package:accessory_jk_flutter/pages/acc_detail.dart';
import 'package:accessory_jk_flutter/widgets/acc_grid.dart';
import 'package:accessory_jk_flutter/widgets/background_clipper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Browse by Categories",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    // 상단 물건들 가로 배열
                    // color: Colors.amber, // 뒷배경
                    height: MediaQuery.of(context).size.height / 4.15, // 높이
                    child: ListView.builder(
                      //listview 만들기
                      padding:
                          EdgeInsets.symmetric(horizontal: 20), //가로방향 20 패딩
                      scrollDirection: Axis.horizontal, //스크롤 방향 가로 지정
                      itemCount: accData.length, // 아이템 개수
                      itemBuilder: (BuildContext context, int index) {
                        //itemBuilder 이용
                        return GestureDetector(
                          onTap: () => {
                            //go to acc detail page
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AccDetail(acc: accData[index]);
                            }))
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipPath(
                              clipper: BackgroundClipper(),
                              child: Container(
                                color: accData[index].bgColor,
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        // stack을 이용해서

                                        Container(
                                          height: 25,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.25),
                                                    spreadRadius: 10,
                                                    blurRadius: 30)
                                              ]),
                                        ),
                                        Image.asset(
                                          'assets/${accData[index].imageName}',
                                          height: 130,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    Text(
                                      accData[index].name,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      accData[index].price,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
                child: Text(
                  "Recommended for You",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //Acc grid
            AccGrid(
              accessories: accData,
            )
          ],
        ));
  }
}
