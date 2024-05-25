import 'package:flutter/material.dart';

class Follow extends StatefulWidget {
  const Follow({Key? key}) : super(key: key);

  @override
  State<Follow> createState() => _FollowUpState();
}

class _FollowUpState extends State<Follow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
  backgroundColor: Color.fromARGB(255, 220, 255, 251),
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 220, 255, 251),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: Text("Doctor name",style: TextStyle(  color: Color(0xff0C8A7D),fontSize: 15),)),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150),
                    width: 410,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      cursorRadius: Radius.zero,
                      cursorColor: Color(0xff0C8A7D),
                      cursorHeight: 20,
                      cursorWidth: 2,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ahmed Ali",
                          hintStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(color: Colors.black)),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150, top: 20),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: Text("Date",style: TextStyle(  color: Color(0xff0C8A7D),fontSize: 17),)),
          
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 160, top: 20),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "18",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 29,
                      height: 50,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xff0C8A7D),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 40, top: 20),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "5",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 29,
                      height: 50,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xff0C8A7D),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 40, top: 20),
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "2024",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                          
                          margin: EdgeInsets.only(left: 90,top: 29),
                            width: 600,
                            height: 280,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Color(0xff0C8A7D),
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(6),
                            ),
                            child:
                            SingleChildScrollView(
                              child: Column(children: [ 
                                SizedBox(height: 20,),
                                Container(
                                  
                                  
                                  child: Row( children: [ 
                                    SizedBox(width: 20,),
                                   Text(
                                  "Medicine name",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff0C8A7D),
                                  ),
                                                                ),
                                                                SizedBox(width: 20,),
                                                     Text(
                                  "Dosage",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff0C8A7D),
                                  ),
                                                                ),
                                                                SizedBox(width: 20,),
                                                     Text(
                                  "Frequency",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff0C8A7D),
                                  ),
                                                                ),
                                                                SizedBox(width: 20,),
                                                                 Text(
                                  "Duration",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff0C8A7D),
                                  ),
                                                                ),
                                                                SizedBox(width: 10,),
                                                    
                                  ],
                                                    
                                    
                                  ),
                                ),
                                const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Omega",style: TextStyle(fontSize: 20),),),
                                                    ],
                                                  ),
                                                    const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                    Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Aspirinn",style: TextStyle(fontSize: 20),),),
                                                    ],
                                                  ),
                                                    const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                    Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Vitamin D",style: TextStyle(fontSize: 20),),),
        
        
        
                                                    ],
                                                  ),
                                      
                                                  
                              ],),
                            )
                            ),
                    ),
                    SizedBox(width: 400,),
                    Container(
                        margin: EdgeInsets.only(top: 29),
                      width: 299, 
                      height: 280,
                      decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Color(0xff0C8A7D),
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(6),
                            ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [ 
                          Text("Any notes",style: TextStyle(fontSize: 29,  color: Color(0xff0C8A7D),),),
                      TextField( 
              
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "-----------------------",
                            
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                        
        
        
                      
                  ]),
                      )
                  ],
                ),
                  const Divider( height: 50,),
                    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: Text("Doctor name",style: TextStyle(  color: Color(0xff0C8A7D),),)),
                    
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150),
                    width: 410,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      cursorRadius: Radius.zero,
                      cursorColor: Color(0xff0C8A7D),
                      cursorHeight: 20,
                      cursorWidth: 2,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Ahmed Ali",
                          hintStyle: TextStyle(color: Colors.black),
                          labelStyle: TextStyle(color: Colors.black)),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 150, top: 20),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(28),
                    ),
                    child: Text("Date",style: TextStyle(  color: Color(0xff0C8A7D),fontSize: 17),)),
          
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 160, top: 20),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "18",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 29,
                      height: 50,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xff0C8A7D),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 40, top: 20),
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "5",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 29,
                      height: 50,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xff0C8A7D),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 40, top: 20),
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff0C8A7D),
                            width: 2.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.circular(6),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "2024",
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              
              ],
            ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Container(
                          
                          margin: EdgeInsets.only(left: 90,top: 29),
                            width: 600,
                            height: 280,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Color(0xff0C8A7D),
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(6),
                            ),
                            child:
                            SingleChildScrollView(
                              child: Column(children: [ 
                                SizedBox(height: 20,),
                                Row( children: [ 
                                  SizedBox(width: 20,),
                                 Text(
                                "Medicine name",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0C8A7D),
                                ),
                              ),
                              SizedBox(width: 20,),
                                                   Text(
                                "Dosage",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0C8A7D),
                                ),
                              ),
                              SizedBox(width: 20,),
                                                   Text(
                                "Frequency",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0C8A7D),
                                ),
                              ),
                              SizedBox(width: 20,),
                               Text(
                                "Duration",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0C8A7D),
                                ),
                              ),
                              SizedBox(width: 20,),
                                                  
                                ],
                                                  
                                  
                                ),
                                const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Omega",style: TextStyle(fontSize: 20),),),
                                                    ],
                                                  ),
                                                    const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                    Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Aspirinn",style: TextStyle(fontSize: 20),),),
                                                    ],
                                                  ),
                                                const Divider( height: 40,  color: Color(0xff0C8A7D),),
                                                    Row(
                                                    mainAxisAlignment: MainAxisAlignment.start, 
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      
                                                      Container(
                              margin: EdgeInsets.only(left: 29),
                              child: Text("Vitamin D",style: TextStyle(fontSize: 20),),),
        
        
        
                                                    ],
                                                  ),
                                      
                                                  
                              ],),
                            )
                            ),
                    ),
                    SizedBox(width: 400,),
                    Container(
                        margin: EdgeInsets.only(top: 29),
                      width: 299, 
                      height: 280,
                      decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Color(0xff0C8A7D),
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              borderRadius: new BorderRadius.circular(6),
                            ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [ 
                          Text("Any notes",style: TextStyle(fontSize: 29,  color: Color(0xff0C8A7D),),),
                      TextField( 
              
                        textAlign: TextAlign.center,
                        cursorRadius: Radius.zero,
                        cursorColor: Color(0xff0C8A7D),
                        cursorHeight: 20,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "-----------------------",
                            
                            hintStyle: TextStyle(color: Colors.black),
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                        
        
        
                      
                  ]),
                      )
                  ],
                ),
                  const Divider( height: 50,),
        
          ],
        ),
      ),
    );
  }
}
