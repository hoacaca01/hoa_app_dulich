
import 'package:flutter/material.dart';

import '../../kho/kholuutru.dart';

class ThongtinCanhdiem extends StatefulWidget{
  final String image;
  final String location;
  final String date;

  const ThongtinCanhdiem({super.key, required this.image, required this.location, required this.date});

  @override
  State<ThongtinCanhdiem> createState() => _ThongtinCanhdiemState();
}

class _ThongtinCanhdiemState extends State<ThongtinCanhdiem> {
  final _ChitietCanhdiem = Kholuutru.ChitietCanhdiem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _headerWidget(),
            _bodyContent(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Stack(
      children: <Widget>[
        Container(
          height: 180,
          child: Image.asset("assets/cover.png"),
        ),
        Container(
          margin: EdgeInsets.only(top: 35,right: 10,left: 12),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Thông Tin Chi Tiết",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  },child: Icon(Icons.arrow_back))
                ],
              ),
              SizedBox(height: 35,),
              Text(widget.location, style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),)
            ],
          )
        ),
      ],
    );
  }

  Widget _bodyContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _ChitietCanhdiem.length,
              itemBuilder: (_,index){
                return Container(
                  margin: EdgeInsets.only(right: 15, left: 10),
                  height: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15),
                    ),
                    child: Image.asset(_ChitietCanhdiem[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          // Text("(Nguồn trích dẫn: ${widget.location} Explorer)")
          Text("(Nguồn trích dẫn: Phong Nha Explorer)",
            style: TextStyle(
              fontSize: 16,
              color:  Colors.cyan,
            ),
          ),
          SizedBox(height: 5,),
          Text("Xuân Hòa: ${widget.date}",
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ),
          SizedBox(height: 7,),
          Text("Động Phong Nha nằm ở xã Sơn Trạch huyện Bố Trạch tỉnh Quảng Bình, cách thành phố Đồng Hới - Quảng Bình khoảng 45km, thuộc vùng núi đá vôi vườn quốc gia Phong Nha – Kẻ Bàng. Từ Đồng Hới đến Động Phong Nha du khách đi theo nhánh Đông đường Hồ Chí Minh. Động Phong Nha dài 8,5km, chỗ cao nhất 83m, cửa động cao 10m, rộng 25m. Trong động có hang nước, hang khô như hang Bi Kí (hang Hội trường), hang Tiên, hang Cung Đình,..."
              "- Địa chỉ: Sơn Trạch, Bố Trạch, Quảng Bình "
              "- Toạ độ google map:  17.581333, 106.283083",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: 160,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15),
              ),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Động Phong Nha nằm ở xã Sơn Trạch huyện Bố Trạch tỉnh Quảng Bình, cách thành phố Đồng Hới - Quảng Bình khoảng 45km, thuộc vùng núi đá vôi vườn quốc gia Phong Nha – Kẻ Bàng. Từ Đồng Hới đến Động Phong Nha du khách đi theo nhánh Đông đường Hồ Chí Minh. Động Phong Nha dài 8,5km, chỗ cao nhất 83m, cửa động cao 10m, rộng 25m. Trong động có hang nước, hang khô như hang Bi Kí (hang Hội trường), hang Tiên, hang Cung Đình,..."
              "- Địa chỉ: Sơn Trạch, Bố Trạch, Quảng Bình "
              "- Toạ độ google map:  17.581333, 106.283083",
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 30,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.3)
            ),
            child: Text('Đọc tiếp..',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
