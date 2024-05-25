import 'package:doctor_app/pages/Manage.dart';
import 'package:doctor_app/pages/first.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/lab_tests.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/manager_profile.dart';
import 'package:doctor_app/pages/notification.dart';
import 'package:doctor_app/pages/patient_profile.dart';
import 'package:doctor_app/pages/reports.dart';
import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  const Patients({super.key});
  @override
  State<Patients> createState() => _Patients();
}

class _Patients extends State<Patients> {
  bool isSearchClicked = false;
  final TextEditingController _searchController = TextEditingController();
  String? Role;
  int selectedIndex = -1;
  int index = 0;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodController = TextEditingController();

  GlobalKey<FormState> formstate1 = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();
  GlobalKey<FormState> formstate3 = GlobalKey();
  GlobalKey<FormState> formstate4 = GlobalKey();
  GlobalKey<FormState> formstate5 = GlobalKey();
  GlobalKey<FormState> formstate6 = GlobalKey();
  GlobalKey<FormState> formstate7 = GlobalKey();
  GlobalKey<FormState> formstate8 = GlobalKey();
  GlobalKey<FormState> formstate9 = GlobalKey();
  GlobalKey<FormState> formstate10 = GlobalKey();

  String? gender = "Male";
  int choice = 1;
  bool isSelected = false;
  List<String> bloodgroups = [
    "A+",
    "A-",
    "B+",
    "B-",
    "O+",
    "O-",
    "AB+",
    "AB-",
  ];
  List<String> selectedBloodgroups = [];

  final allChecked =
      CheckBoxModel(name: "Name", id: "ID", phone: "Phone", action: "Action");

  List<CheckBoxModel> PatientsList = [
    CheckBoxModel(
        name: "Nada Nasr",
        id: "2009001",
        phone: "01015678190",
        action: "action"),
    CheckBoxModel(
        name: "Ebtehal Ahmed",
        id: "2009002",
        phone: "01015678192",
        action: "action"),
    CheckBoxModel(
        name: "Manar Fawzy",
        id: "2009003",
        phone: "01015678193",
        action: "action"),
    CheckBoxModel(
        name: "Rahma Anwar",
        id: "2009004",
        phone: "01015678194",
        action: "action")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {
              return;
            },
            icon: const Icon(
              Icons.language,
              size: 44,
              color: Color(0xff0C8A7D),
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  const Icon(Icons.notifications);
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Notifications()));
              },
              icon: const Icon(
                Icons.notifications_none,
                size: 44,
                color: Color(0xff0C8A7D),
              )),
          PopupMenuButton(
              color: const Color(0xffFFFFFF),
              icon: const Icon(Icons.person),
              iconSize: 44,
              iconColor: const Color(0xff0C8A7D),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: "profile",
                      child: MaterialButton(
                          child: const Row(children: [
                            Icon(
                              Icons.person,
                              color: Color(0xff0C8A7D),
                              size: 33,
                            ),
                            Text("Profile",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 26,
                                    fontWeight: FontWeight.normal)),
                          ]),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ManagerProfile()));
                          }),
                    ),
                    PopupMenuItem(
                      value: "log out",
                      child: MaterialButton(
                          child: const Row(children: [
                            Icon(
                              Icons.logout,
                              color: Color(0xff0C8A7D),
                              size: 33,
                            ),
                            Text("Log out",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 26,
                                    fontWeight: FontWeight.normal)),
                          ]),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          }),
                    ),
                  ]),
        ],
        backgroundColor: const Color(0xffFFFFFF),
        iconTheme: const IconThemeData(
          size: 45,
          color: Color(0xFF0E725B),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff0C8A7D),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                    icon: const Icon(Icons.menu_open),
                    iconSize: 60,
                    color: const Color(0xffFFFFFF),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              const SizedBox(height: 10),
              
              DrawerListTile(
                  title: "Manage",
                  img: "assets/img/teamwork .png",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Manage()));
                  }),
              DrawerListTile(
                  title: "Archive",
                  img: "assets/img/icon-park-outline_log.png",
                  press: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const First()));
                  }),
              
              DrawerListTile(
                  title: "Patients",
                  img: "assets/img/patient 1.png",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Patients()));
                  }),
              DrawerListTile(
                  title: "Lab Tests",
                  img: "assets/img/test 1.png",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LabTests()));
                  }),
              DrawerListTile(
                  title: "Reports",
                  img: "assets/img/report (1) 1.png",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Reports()));
                  }),
            
            ],
          ),
        ),
      ),
      body: Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          child: ListView(children: [
            Container(
              child: Row(children: [
                Container(
                  child: Row(children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 45,
                      color: const Color(0xFF0C8A7D),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Home()));
                      },
                    ),
                    const Text("Patients",
                        style: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 36,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 40,
                  color: const Color(0xfff0C8A7D),
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                ),
                MaterialButton(
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    const Text("Add ",
                        style: TextStyle(
                            color: Color(0xff0C8A7D),
                            fontSize: 34,
                            fontWeight: FontWeight.bold)),
                    Image.asset("assets/img/Plus.png"),
                  ]),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: const Color(0xff0C8A7D),
                            content: Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                              icon: const Icon(Icons.clear),
                                              color: const Color(0xffFFFFFF),
                                              iconSize: 30,
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              }),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  // col 1
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Row(children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "First Name",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            height: 54,
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Form(
                                                              key: formstate1,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    firstnameController,
                                                                cursorColor:
                                                                    const Color(
                                                                        0xff0C8A7D),
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration: const InputDecoration(
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    hintText:
                                                                        "first name",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w200)),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                            height: 20),
                                                        Row(children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "Last Name",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            height: 54,
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Form(
                                                              key: formstate2,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    lastnameController,
                                                                cursorColor:
                                                                    const Color(
                                                                        0xff0C8A7D),
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration: const InputDecoration(
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    hintText:
                                                                        "last name",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w200)),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                            height: 20),
                                                        Row(children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "D.O.B",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            height: 54,
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Form(
                                                              key: formstate3,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    dobController,
                                                                cursorColor:
                                                                    const Color(
                                                                        0xff0C8A7D),
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration: const InputDecoration(
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    hintText:
                                                                        "date of birth",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w200)),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                            height: 20),
                                                        Row(children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "Password",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            height: 54,
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Form(
                                                              key: formstate4,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    passController,
                                                                cursorColor:
                                                                    const Color(
                                                                        0xff0C8A7D),
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration: const InputDecoration(
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    hintText:
                                                                        "password",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w200)),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                            height: 20),
                                                        Row(children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "E-mail",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            height: 54,
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Form(
                                                              key: formstate5,
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    emailController,
                                                                cursorColor:
                                                                    const Color(
                                                                        0xff0C8A7D),
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "Required";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration: const InputDecoration(
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    hintText:
                                                                        "e-mail",
                                                                    hintStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff333333),
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.w200)),
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                            height: 20),
                                                      ]),

                                                  const SizedBox(width: 30),

                                                  //col 2
                                                  Column(children: [
                                                    Row(children: [
                                                      Container(
                                                        width: 190,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: const Text(
                                                            "Height",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Container(
                                                        height: 54,
                                                        width: 400,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        margin: const EdgeInsets
                                                            .only(right: 5),
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Form(
                                                          key: formstate6,
                                                          child: TextFormField(
                                                            controller:
                                                                heightController,
                                                            cursorColor:
                                                                const Color(
                                                                    0xff0C8A7D),
                                                            validator: (value) {
                                                              if (value!
                                                                  .isEmpty) {
                                                                return "Required";
                                                              }
                                                              return null;
                                                            },
                                                            decoration: const InputDecoration(
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                hintText:
                                                                    "height",
                                                                hintStyle: TextStyle(
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w200)),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    const SizedBox(height: 20),
                                                    Row(children: [
                                                      Container(
                                                        width: 190,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        margin: const EdgeInsets
                                                            .all(5),
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: const Text(
                                                            "Weight",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign: TextAlign
                                                                .center),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Container(
                                                        height: 54,
                                                        width: 400,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5),
                                                        margin: const EdgeInsets
                                                            .only(right: 5),
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Form(
                                                          key: formstate10,
                                                          child: TextFormField(
                                                            controller:
                                                                weightController,
                                                            cursorColor:
                                                                const Color(
                                                                    0xff0C8A7D),
                                                            validator: (value) {
                                                              if (value!
                                                                  .isEmpty) {
                                                                return "Required";
                                                              }
                                                              return null;
                                                            },
                                                            decoration: const InputDecoration(
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                hintText:
                                                                    "weight",
                                                                hintStyle: TextStyle(
                                                                    color: Color(
                                                                        0xff333333),
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w200)),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    const SizedBox(height: 20),
                                                    Row(
                                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 190,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffFFFFFF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: const Text(
                                                                "Gender",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        30,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            width: 400,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 5),
                                                            child: Column(
                                                                children: [
                                                                  Row(
                                                                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                      children: [
                                                                        Radio(
                                                                            activeColor: const Color(
                                                                                0xffFFFFFF),
                                                                            focusColor: const Color(
                                                                                0xffFFFFFF),
                                                                            value:
                                                                                "Male",
                                                                            groupValue:
                                                                                gender,
                                                                            onChanged: (val) =>
                                                                                setState(() => gender = val)),
                                                                        const Text(
                                                                            "Male",
                                                                            style: TextStyle(
                                                                                color: Color(0xff000000),
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 28)),
                                                                      ]),
                                                                  Row(
                                                                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                      children: [
                                                                        Radio(
                                                                            activeColor: const Color(
                                                                                0xffFFFFFF),
                                                                            value:
                                                                                "Female",
                                                                            groupValue:
                                                                                gender,
                                                                            onChanged: (val) =>
                                                                                setState(() => gender = val)),
                                                                        const Text(
                                                                            "Female",
                                                                            style: TextStyle(
                                                                                color: Color(0xff000000),
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 28)),
                                                                      ]),
                                                                ]),
                                                          ),
                                                        ]),
                                                    const SizedBox(height: 20),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 170),
                                                      child: Container(
                                                        child: Row(
                                                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: 190,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5),
                                                                margin:
                                                                    const EdgeInsets
                                                                        .all(5),
                                                                decoration: BoxDecoration(
                                                                    color: const Color(
                                                                        0xffFFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                10)),
                                                                child: const Text(
                                                                    "Blood group",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            30,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center),
                                                              ),
                                                              //const SizedBox(width: 165),
                                                              Container(
                                                                  //height: 150,
                                                                  width: 250,
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(5),
                                                                  child: Wrap(
                                                                      children:
                                                                          bloodgroups
                                                                              .map((bloodgroups) =>
                                                                                  FilterChip(
                                                                                    selectedColor: const Color(0xfff0C8A7D),
                                                                                    label: Text(bloodgroups),
                                                                                    selected: selectedBloodgroups.contains(bloodgroups),
                                                                                    onSelected: (selected) {
                                                                                      setState(() {
                                                                                        if (selected) {
                                                                                          selectedBloodgroups.add(bloodgroups);
                                                                                        } else {
                                                                                          selectedBloodgroups.remove(bloodgroups);
                                                                                        }
                                                                                      });
                                                                                    },
                                                                                  ))
                                                                              .toList())
                                                                  /*ChoiceChip(
                                                                label: Text("A+"),
                                                                selected:
                                                                    isSelected,
                                                                selectedColor:
                                                                    Colors.green,
                                                                onSelected:
                                                                    (val) {
                                                                  setState(() {
                                                                    isSelected =
                                                                        val;
                                                                  });
                                                                },
                                                              )*/
                                                        
                                                                  /*ChipsChoice.single(
                                                              value: choice,
                                                              onChanged: (val) =>
                                                                  setState(() {
                                                                choice = val;
                                                              }),
                                                              choiceItems:
                                                                  C2Choice.listFrom(
                                                                source: bloodgroups,
                                                                value:
                                                                    (index, item) =>
                                                                        index,
                                                                label:
                                                                    (index, item) =>
                                                                        item,
                                                              ),
                                                              choiceStyle: const C2ChipStyle(
                                                                  backgroundColor:
                                                                      Colors.white
                                                                  //avatarForegroundColor: Colors.white
                                                                  //checkmarkColor: Color(0xffffffff)
                                                                  //avatarBackgroundColor: Color(0xffffffff)
                                                                  ),
                                                              wrapped: true,
                                                              spinnerColor:
                                                                  const Color(
                                                                      0xffFFFFFF),
                                                            ),*/
                                                                  ),
                                                              //const SizedBox(width: 300),
                                                            ]),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                  ])
                                                ]),
                                          ),
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                //alignment: Alignment.center,
                                                width: 160,
                                                child: MaterialButton(
                                                    color:
                                                        const Color(0xffFFFFFF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: const Text("Save",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff0C8A7D),
                                                            fontSize: 36,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        textAlign:
                                                            TextAlign.center),
                                                    onPressed: () {
                                                      if (formstate1
                                                          .currentState!
                                                          .validate()) {
                                                        print("valid");
                                                      } else {
                                                        print("not valid");
                                                      }
                                                      if (formstate2
                                                          .currentState!
                                                          .validate()) {
                                                        print("valid");
                                                      } else {
                                                        print("not valid");
                                                      }
                                                      if (formstate3
                                                          .currentState!
                                                          .validate()) {
                                                        print("valid");
                                                      } else {
                                                        print("not valid");
                                                      }
                                                      if (formstate4
                                                          .currentState!
                                                          .validate()) {
                                                        print("valid");
                                                      } else {
                                                        print("not valid");
                                                      }

                                                      /*String name = nameController
                                                          .text
                                                          .trim();
                                                      String id =
                                                          idController.text.trim();
                                                      String phone = phoneController
                                                          .text
                                                          .trim();
                                                      String email = emailController
                                                          .text
                                                          .trim();
                                                      String role = roleController
                                                          .text
                                                          .trim();
                                                      if (name.isNotEmpty &&
                                                          id.isNotEmpty &&
                                                          phone.isNotEmpty &&
                                                          email.isNotEmpty &&
                                                          role.isNotEmpty) {
                                                        setState(() {
                                                          nameController.text = '';
                                                          idController.text = '';
                                                          phoneController.text = '';
                                                          emailController.text = '';
                                                          roleController.text = '';
                                                          PatientsList.add(
                                                              CheckBoxModel(
                                                                  name: name,
                                                                  id: id,
                                                                  phone: phone,
                                                                  action: email));
                                                        });
                                                      }*/
                                                    }),
                                              ),
                                              Container(
                                                //alignment: Alignment.center,
                                                width: 160,
                                                child: MaterialButton(
                                                    color:
                                                        const Color(0xffFFFFFF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: const Text("Cancel",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff0C8A7D),
                                                            fontSize: 36,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        textAlign:
                                                            TextAlign.center),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                              )
                                            ]),
                                        const SizedBox(height: 30)
                                      ]),
                                ),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff72CEBF),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Checkbox(
                        activeColor: const Color(0xff0C8A7D),
                        side: const BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0xff0C8A7D),
                            width: 2),
                        value: allChecked.value,
                        onChanged: (value) => onAllClicked1(allChecked)),
                    Text(allChecked.name,
                        style: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text(allChecked.id,
                        style: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text(allChecked.phone,
                        style: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text(allChecked.action,
                        style: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 36,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
            const Divider(),
            ...PatientsList.map(
              (item) => Expanded(
                child: Card(
                  color: const Color(0xffFFFFFF),
                  child: Expanded(
                    child: Container(
                      color: const Color(0xffFFFFFF),
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(width: 109),
                                Checkbox(
                                    activeColor: const Color(0xff0C8A7D),
                                    side: const BorderSide(
                                        style: BorderStyle.solid,
                                        color: Color(0xff0C8A7D),
                                        width: 2),
                                    value: item.value,
                                    onChanged: (value) => onItemClicked(item)),
                                const SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 300,
                                  child: Row(children: [
                                    Image.asset("assets/img/profile.png",
                                        width: 30, height: 30),
                                    Text(item.name,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36,
                                            fontWeight: FontWeight.normal))
                                  ]),
                                ),
                                const SizedBox(width: 50),
                                Text(item.id,
                                    style: const TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 36)),
                                const SizedBox(width: 120),
                                Text(item.phone,
                                    style: const TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 36)),
                                const SizedBox(width: 160),
                                Container(
                                  child: Row(children: [
                                    IconButton(
                                        icon: const Icon(Icons.edit),
                                        iconSize: 50,
                                        color: const Color(0xff0C8A7D),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder:
                                                  (context) => SimpleDialog(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5,
                                                                    right: 5),
                                                            child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  TextField(
                                                                    cursorColor:
                                                                        const Color(
                                                                            0xff0C8A7D),
                                                                    decoration: const InputDecoration(
                                                                        labelText:
                                                                            "Name",
                                                                        labelStyle: TextStyle(
                                                                            color: Color(
                                                                                0xff0C8A7D),
                                                                            fontSize:
                                                                                18),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  TextField(
                                                                    cursorColor:
                                                                        const Color(
                                                                            0xff0C8A7D),
                                                                    decoration: const InputDecoration(
                                                                        labelText:
                                                                            "ID",
                                                                        labelStyle: TextStyle(
                                                                            color: Color(
                                                                                0xff0C8A7D),
                                                                            fontSize:
                                                                                18),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  TextField(
                                                                    cursorColor:
                                                                        const Color(
                                                                            0xff0C8A7D),
                                                                    decoration: const InputDecoration(
                                                                        labelText:
                                                                            "Phone",
                                                                        labelStyle: TextStyle(
                                                                            color: Color(
                                                                                0xff0C8A7D),
                                                                            fontSize:
                                                                                18),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ]),
                                                          ),
                                                          MaterialButton(
                                                              child: const Text(
                                                                  "Update",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                              onPressed: () {
                                                                /*nameController
                                                                        .text =
                                                                    PatientsList[
                                                                            index]
                                                                        .name;
                                                                idController
                                                                        .text =
                                                                    PatientsList[
                                                                            index]
                                                                        .id;
                                                                phoneController
                                                                        .text =
                                                                    PatientsList[
                                                                            index]
                                                                        .phone;

                                                                setState(() {
                                                                  selectedIndex =
                                                                      index;
                                                                });*/
                                                              })
                                                        ],
                                                      ));
                                        }),
                                    IconButton(
                                        icon: const Icon(Icons.delete),
                                        iconSize: 50,
                                        color: const Color(0xff0C8A7D),
                                        onPressed: () {
                                          setState(() {
                                            PatientsList.removeAt(
                                                PatientsList.indexOf(item));
                                          });
                                        })
                                  ]),
                                ),
                                //const SizedBox(width: 60),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  onAllClicked1(CheckBoxModel ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      PatientsList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CheckBoxModel ckbItem) {
    setState(() {
      ckbItem.value = !ckbItem.value;
    });
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {super.key, required this.title, required this.img, required this.press});

  final String title, img;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: Image.asset(img, width: 60, height: 60),
      title: Text(title,
          style: const TextStyle(fontSize: 36, color: Color(0xffFFFFFF))),
    );
  }
}
/////////////////////////////////////////////////////////////

class CheckBoxModel {
  CheckBoxModel(
      {required this.name,
      required this.id,
      required this.phone,
      required this.action});

  String name, id, phone, action;
  bool value = false;
}

class MySearchDelegate extends SearchDelegate {
  List suggestions = [
    "Nada",
    "Ebtehal",
    "Manar",
    "Rahma"
  ]; //المفروض من الداتابيز

  List? filterList;

  @override
  List<Widget>? buildActions(BuildContext context) => [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
              icon: const Icon(Icons.close),
              color: const Color(0xff0C8A7D),
              onPressed: () {
                query = "";
              }),
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      icon: const Icon(Icons.arrow_back),
      color: const Color(0xff0C8A7D),
      onPressed: () {
        close(context, null);
      });

  @override
  Widget buildResults(BuildContext context) {
    return const patient_profile(); //غالبا هيبقى البروفايل بتاع الشخص اللي اختارته
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                  color: const Color(0xffFFFFFF),
                  child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "${suggestions[i]}",
                        style: const TextStyle(fontSize: 30),
                      ))),
            );
          });
    } else {
      filterList =
          suggestions.where((element) => element.startsWith(query)).toList();
      return ListView.builder(
          itemCount: filterList!.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                  color: const Color(0xffFFFFFF),
                  child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "${filterList![i]}",
                        style: const TextStyle(fontSize: 30),
                      ))),
            );
          });
    }
  }
}
