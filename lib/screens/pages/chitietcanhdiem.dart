
import 'package:flutter/material.dart';
import 'package:two_app/kho/kholuutru.dart';
import 'package:two_app/screens/pages/thongtinchitietcanhdiem.dart';

class ChitietCanhdiem extends StatelessWidget {
  final _ChitietCanhdiem = Kholuutru.ChitietCanhdiem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Danh Sách Chi Tiết",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Icon(Icons.arrow_back,
                  )
                ),
              ],
            ),
            SizedBox(height: 5,),
            Expanded(
                child:ListView.builder(
                  itemCount: _ChitietCanhdiem.length,
                  itemBuilder: (_, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) => ThongtinCanhdiem(
                            image: _ChitietCanhdiem[index].image,
                            location: _ChitietCanhdiem[index].location,
                            date: _ChitietCanhdiem[index].date,
                          ),
                        ),);
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 6,),
                                Text(
                                  _ChitietCanhdiem[index].location,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 12,),
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15),
                                    ),
                                    child: Image.asset(_ChitietCanhdiem[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 48,
                                  left: 8,
                                  child: Container(
                                    child: Text(_ChitietCanhdiem[index].title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 26,
                                  left: 8,
                                  child: Container(
                                    child: Text(_ChitietCanhdiem[index].locationCap,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 8,
                                  child: Container(
                                    child: Text(_ChitietCanhdiem[index].date,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
