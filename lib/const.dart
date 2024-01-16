import 'package:flutter/material.dart';

const kLBlue = Colors.lightBlueAccent;
const kWhite = Colors.white;
const kBlack = Colors.black87;

const kContainerBoxDecoration = BorderRadius.only(
  topLeft: Radius.circular(50),
  bottomLeft: Radius.circular(50),
  topRight: Radius.circular(100),
  bottomRight: Radius.circular(30),
);

const kBoxDecoration = BoxDecoration(
    color: kWhite,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),
    ));
