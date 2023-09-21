
import 'package:two_app/model/canhdiem_model.dart';

import '../model/chitietcanhdiem_model.dart';


class Kholuutru {

  static List<canhdiem> Canhdiem = [
    canhdiem(
      caption: "Xin chào Động Phong Nha",
      name: "Động Phong Nha",
      image: "assets/phongnha.jpg"
    ),
    canhdiem(
        caption: "Xin chào Động Thiên Đường",
        name: "Động Thiên Đường",
        image: "assets/thienduong.jpg"
    ),
    canhdiem(
        caption: "Xin chào Động Tiên Sơn",
        name: "Động Tiên Sơn",
        image: "assets/dongtienson.jpg"
    ),
    canhdiem(
        caption: "Xin chào Sông Chày - Hang Tối",
        name: "Sông Chày",
        image: "assets/songchayhangtoi.jpg"
    ),
    canhdiem(
        caption: "Xin chào Suối Nước Mooc",
        name: "Suối Nước Mooc",
        image: "assets/suoinuocmooc.jpg"
    ),
  ];
  static List<amthuc> Amthuc = [
    amthuc(
        caption: "Bánh Bột Lọc",
        name: "Bánh Bột Lọc",
        image: "assets/banhbotloc.jpg"
    ),
    amthuc(
        caption: "Bánh Xèo Quảng Hòa",
        name: "Bánh Xèo Quảng Hòa",
        image: "assets/banhxeoquanghoa.jpg"
    ),
    amthuc(
        caption: "Bánh Bèo",
        name: "Bánh Bèo",
        image: "assets/banhbeo.jpg"
    ),
    amthuc(
        caption: "Bánh Khoái",
        name: "Bánh Khoái",
        image: "assets/banhkhoai.jpg"
    ),
    amthuc(
        caption: "Bánh Cuốn Tôm",
        name: "Bánh Cuốn Tôm",
        image: "assets/banhcuontom.jpg"
    ),
  ];
  static List<chitietCanhdiem> ChitietCanhdiem = [
    chitietCanhdiem(
      image: "assets/phongnha.jpg",
      title: "Động Phong Nha",
      date: "2023/09/19",
      location: "Quảng Bình",
      locationCap: "Quảng Bình động đẹp nhất"
    ),
    chitietCanhdiem(
        image: "assets/thienduong.jpg",
        title: "Động Thiên Đường",
        date: "2023/09/19",
        location: "Quảng Bình",
        locationCap: "Quảng Bình động đẹp nhì"
    ),
    chitietCanhdiem(
        image: "assets/dongtienson.jpg",
        title: "Động Tiên Sơn",
        date: "2023/09/19",
        location: "Quảng Bình",
        locationCap: "Quảng Bình động đẹp ba"
    ),
    chitietCanhdiem(
        image: "assets/songchayhangtoi.jpg",
        title: "Sông Chày",
        date: "2023/09/19",
        location: "Quảng Bình",
        locationCap: "Quảng Bình đẹp tu"
    ),
    chitietCanhdiem(
        image: "assets/suoinuocmooc.jpg",
        title: "Suối Nước Mooc",
        date: "2023/09/19",
        location: "Quảng Bình",
        locationCap: "Quảng Bình đẹp năm"
    ),
  ];
}
