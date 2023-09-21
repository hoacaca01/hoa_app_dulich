import 'package:flutter/material.dart';
import 'package:two_app/kho/kholuutru.dart';
import 'package:two_app/screens/pages/chitietcanhdiem.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController _seachController = TextEditingController();
  final _Canhdiem = Kholuutru.Canhdiem;
  final _Amthuc = Kholuutru.Amthuc;
  @override
  void dispose() {
    _seachController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10, ),
            _headerWidget(),
            SizedBox(height: 15, ),
            _seachWidget(),
            SizedBox(height: 15, ),
            _bodyContent(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Du Lịch Quảng Bình",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
        InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (_) => ChitietCanhdiem(),
              ),);
        } ,child: Image.asset('assets/menu.png'),
        ),
      ],
    );
  }

  Widget _seachWidget() {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: TextField(
        controller: _seachController,
        decoration: InputDecoration(
          hintText: 'Tìm kiếm ...',
          border: InputBorder.none,
          suffixIcon: Icon(Icons.mic),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _bodyContent() {
    return Column(
      children: <Widget>[
        _canhdiemWidget(),
        SizedBox(height: 10, ),
        _amthucWidget()
      ],
    );
  }

  Widget _canhdiemWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Cảnh Điểm Quảng Bình",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text("View All",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.3)
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Canhdiem.length,
            itemBuilder: (_, index){
              return Container(
                width: 160,
                height: 160,
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Image.asset(
                              _Canhdiem[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8
                            ),
                            child: Text(
                              "${_Canhdiem[index].caption}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(.4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "${_Canhdiem[index].name}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _amthucWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Ẩm Thực Quảng Bình",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold)
            ),
            Text("View All",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.3)
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _Amthuc.length,
            itemBuilder: (_, index){
              return Container(
                width: 160,
                height: 160,
                margin: EdgeInsets.only(right: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Image.asset(
                              _Amthuc[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8
                            ),
                            child: Text(
                              "${_Amthuc[index].caption}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(.4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "${_Amthuc[index].name}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}








