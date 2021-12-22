import 'package:accessory_jk_flutter/models/acc.dart';
import 'package:accessory_jk_flutter/widgets/acc_grid.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                padding: EdgeInsets.only(left: 15),
                height: 45,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                    cursorColor: Colors.grey.shade500,
                    decoration: const InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 16))),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  top: 25,
                  bottom: 15,
                ),
                child: Text(
                  "TRENDING NOW",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        AccGrid(accessories: accData)
      ],
    );
  }
}
