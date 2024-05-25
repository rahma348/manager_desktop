import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LabTest extends StatefulWidget {
  const LabTest({Key? key}) : super(key: key);

  @override
  State<LabTest> createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              color: Color(0xff0C8A7D),
            ),
          ),
          SingleChildScrollView(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Container(
                          width: 400,
                          height: 240,
                          margin: EdgeInsets.only(left: 50,right: 100),
                              decoration: BoxDecoration(
                        color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: const Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                        
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset("asset/img/Group.png"),
                              Text(
                                "Ahmed Ali",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff0C8A7D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50,right: 100),
                        width: 400,
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Color(0xff0C8A7D),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Blood analysis",
                                style: TextStyle(
                                    fontSize: 29, color: Colors.white),
                              ),
                              Text(
                                "17/12/2023",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50,right: 100),
                        width: 400,
                        height: 100,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Color(0xff0C8A7D),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Blood analysis",
                                style: TextStyle(
                                    fontSize: 29, color: Colors.white),
                              ),
                              Text(
                                "17/12/2023",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(children: [
                    Container(
                        padding: const EdgeInsets.all(2),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                              ),
                              Row(children: [
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: 140,
                                  margin:
                                      const EdgeInsets.only(left: 0, top: 2),
                                  decoration: BoxDecoration(),
                                  child: const Text("PEMO",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                      fontSize: 29, color: Colors.black),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  width: 200,
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    "16.3",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.black),
                                  ),
                                ),
                              ])
                            ])),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("PCV",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "5.79",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("WBC",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("BP",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("BGR",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("BU",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("SC",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("SOD",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("SG",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 20),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("AL",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      Container(
                        width: 140,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(),
                        child: const Text("SU",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Text(
                        ":",
                        style: TextStyle(fontSize: 29, color: Colors.black),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        child: Text(" "),
                      ),
                    ]),
                  ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                  ),
                                  Row(children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: 120,
                                      margin: const EdgeInsets.only(
                                          left: 100, top: 2),
                                      decoration: BoxDecoration(),
                                      child: const Text("POT",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30,
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                    Text(
                                      ":",
                                      style: TextStyle(
                                          fontSize: 29, color: Colors.black),
                                    ),
                                    const SizedBox(width: 15),
                                    Container(
                                      width: 100,
                                      child: Text(
                                        "Normal",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ])
                                ])),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("RBC",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            width: 150,
                            child: Text(
                              ' ',
                            ),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("PC",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("PCC",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("BA",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("HTN",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("DM",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("CAD",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("PE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("ANE",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          Container(
                            width: 120,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(left: 100, top: 2),
                            decoration: BoxDecoration(),
                            child: const Text("APPET",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.left),
                          ),
                          Text(
                            ":",
                            style: TextStyle(fontSize: 29, color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            child: Text(" "),
                          ),
                        ]),
                      ])
                ]),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 1000,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 40),
                      width: 220,
                      height: 69,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff0C8A7D),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        iconSize: 40,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff0C8A7D),
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                    ),
                    child: const Text("Class",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      border: new Border.all(
                          color: Color(0xff0C8A7D),
                          width: 2.0,
                          style: BorderStyle.solid),
                      borderRadius: new BorderRadius.circular(32),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
