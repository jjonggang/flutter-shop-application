import 'package:flutter/material.dart';

class Acc {
  final String name;
  final String imageName;
  final String description;
  final String price;
  final Color bgColor;
  final List<Color> availableColors;

  Acc(this.name, this.imageName, this.description, this.price, this.bgColor,
      this.availableColors);
}

List<Acc> accData = [
  Acc(
    "ring NO.41",
    'a1.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩37,000',
    Color(0xff884C5E),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.22",
    'a2.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩12,000',
    Color(0xffC5AEB1),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.214",
    'a3.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩123,000',
    Color(0xffE2C1C0),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.11",
    'a4.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩24,000',
    Color(0xffD29380),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.52",
    'a5.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩75,000',
    Color(0xffCCB97E),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.37",
    'a6.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩84,000',
    Color(0xff85A293),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.24",
    'a7.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩36,000',
    Color(0xff884C5E),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.42",
    'a8.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩138,000',
    Color(0xff9D848E),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.1",
    'a9.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩15,000',
    Color(0xff6567AB),
    [Colors.red, Colors.pink],
  ),
  Acc(
    "ring NO.2",
    'a10.png',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ipsum orci, bibendum a ultrices vel, rhoncus eget nunc. Nulla facilisi.',
    '\₩19,000',
    Color(0xFFE2C1C0),
    [Colors.red, Colors.pink],
  ),
];
