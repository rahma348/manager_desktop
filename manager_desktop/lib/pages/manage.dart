import 'package:flutter/material.dart';

class Manage extends StatefulWidget {
  const Manage({super.key});

  @override
  State<Manage> createState() => _Manage();
}

class _Manage extends State<Manage> {
  String text = '';
  bool isSearchClicked = false;
  final TextEditingController _searchController = TextEditingController();
  String? Role;
  int selectedIndex = -1;
  int index = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formstate1 = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();
  GlobalKey<FormState> formstate3 = GlobalKey();
  GlobalKey<FormState> formstate4 = GlobalKey();

  final allChecked = CheckBoxModel(
      name: "Name", id: "ID", phone: "Phone", role: "Role", action: "Action");
  List<CheckBoxModel> DoctorList = [
    CheckBoxModel(
        name: "Nada Nasr",
        id: "2009001",
        phone: "01015678190",
        role: "Doctor",
        action: "action"),
    CheckBoxModel(
        name: "Ebtehal Ahmed",
        id: "2009002",
        phone: "01015678192",
        role: "Doctor",
        action: "action"),
    CheckBoxModel(
        name: "Manar Fawzy",
        id: "2009003",
        phone: "01015678193",
        role: "Doctor",
        action: "action"),
    CheckBoxModel(
        name: "Rahma Anwar",
        id: "2009004",
        phone: "01015678194",
        role: "Doctor",
        action: "action")
  ];
  List<CheckBoxModel> AssistantList = [
    CheckBoxModel(
        name: "Aya Mohamed",
        id: "2009001",
        phone: "01015678190",
        role: "Assistant",
        action: "action"),
    CheckBoxModel(
        name: "Salma Yasser",
        id: "2009002",
        phone: "01015678192",
        role: "Assistant",
        action: "action"),
    CheckBoxModel(
        name: "Mona Ahmed",
        id: "2009003",
        phone: "01015678193",
        role: "Assistant",
        action: "action"),
    CheckBoxModel(
        name: "Mariam Khaled",
        id: "2009004",
        phone: "01015678194",
        role: "Assistant",
        action: "action")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Manage",
            style: TextStyle(
                color: Color(0xff0C8A7D),
                fontSize: 36,
                fontWeight: FontWeight.bold),
            //textAlign: TextAlign.start
          ),
          actions: [
            Row(children: [
              IconButton(
                  icon: const Icon(Icons.search),
                  color: const Color(0xfff0C8A7D),
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  }),
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
                          content: Container(
                            width: MediaQuery.of(context).size.width,
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
                                  Row(children: [
                                    Container(
                                      width: 122,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("Name",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Form(
                                          key: formstate1,
                                          child: TextFormField(
                                            controller: nameController,
                                            cursorColor:
                                                const Color(0xff0C8A7D),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Required";
                                              }
                                            },
                                            decoration: const InputDecoration(
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                hintText: "Name",
                                                hintStyle: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Container(
                                      width: 122,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("ID",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Form(
                                          key: formstate2,
                                          child: TextFormField(
                                            controller: idController,
                                            cursorColor:
                                                const Color(0xff0C8A7D),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Required";
                                              }
                                            },
                                            decoration: const InputDecoration(
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                hintText: "ID",
                                                hintStyle: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Container(
                                      width: 122,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("Phone",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Form(
                                          key: formstate3,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            cursorColor:
                                                const Color(0xff0C8A7D),
                                            controller: phoneController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Required";
                                              }
                                            },
                                            decoration: const InputDecoration(
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                hintText: "Phone number",
                                                hintStyle: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Container(
                                      width: 122,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("E_mail",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Form(
                                          key: formstate4,
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor:
                                                const Color(0xff0C8A7D),
                                            controller: emailController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Required";
                                              }
                                            },
                                            decoration: const InputDecoration(
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                hintText: "E_mail",
                                                hintStyle: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Container(
                                      width: 122,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text("Role",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(children: [
                                          RadioListTile(
                                              activeColor:
                                                  const Color(0xffFFFFFF),
                                              title: const Text("Doctor",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              value: "Doctor",
                                              groupValue: Role,
                                              onChanged: (value) {
                                                setState(() {
                                                  Role = value;
                                                  print(value);
                                                });
                                              }),
                                          RadioListTile(
                                              activeColor:
                                                  const Color(0xffFFFFFF),
                                              title: const Text("Assistant",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              value: "Assistant",
                                              groupValue: Role,
                                              onChanged: (value) {
                                                setState(() {
                                                  Role = value;
                                                  print(value);
                                                });
                                              })
                                        ]),
                                      ),
                                    )
                                  ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 140,
                                          child: MaterialButton(
                                              color: const Color(0xffFFFFFF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: const Text("Save",
                                                  style: TextStyle(
                                                      color: Color(0xff0C8A7D),
                                                      fontSize: 36,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center),
                                              onPressed: () {
                                                if (formstate1.currentState!
                                                    .validate()) {
                                                  print("valid");
                                                } else {
                                                  print("not valid");
                                                }
                                                if (formstate2.currentState!
                                                    .validate()) {
                                                  print("valid");
                                                } else {
                                                  print("not valid");
                                                }
                                                if (formstate3.currentState!
                                                    .validate()) {
                                                  print("valid");
                                                } else {
                                                  print("not valid");
                                                }
                                                if (formstate4.currentState!
                                                    .validate()) {
                                                  print("valid");
                                                } else {
                                                  print("not valid");
                                                }

                                                /*String name =
                                                    nameController.text.trim();
                                                String id =
                                                    idController.text.trim();
                                                String phone =
                                                    phoneController.text.trim();
                                                String email =
                                                    emailController.text.trim();
                                                String role =
                                                    roleController.text.trim();
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
                                                    DoctorList.add(
                                                        CheckBoxModel(
                                                            name: name,
                                                            id: id,
                                                            phone: phone,
                                                            role: role,
                                                            action: email));
                                                  });
                                                }*/
                                              }),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: 150,
                                          child: MaterialButton(
                                              color: const Color(0xffFFFFFF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: const Text("Cancel",
                                                  style: TextStyle(
                                                      color: Color(0xff0C8A7D),
                                                      fontSize: 36,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              }),
                                        )
                                      ])
                                ]),
                          ),
                        );
                      });
                },
              ),
            ]),
          ],
          backgroundColor: const Color(0xffFFFFFF),
          iconTheme: const IconThemeData(size: 45, color: Color(0xFF0C8A7D)),
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                  color: const Color(0xff0C8A7D),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              labelColor: const Color(0xffFFFFFF),
              unselectedLabelColor: const Color(0xff333333),
              overlayColor: const MaterialStatePropertyAll(Color(0xffFFFFFF)),
              splashBorderRadius: BorderRadius.circular(10),
              tabs: [
                Tab(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text("Doctor",
                          style: TextStyle(fontSize: 32),
                          textAlign: TextAlign.center)),
                ),
                Tab(
                  child: Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text("Assistant",
                          style: TextStyle(fontSize: 32),
                          textAlign: TextAlign.center)),
                )
              ]),
        ),
        body: Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: TabBarView(children: [
              ListView(children: [
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
                        Text(allChecked.role,
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
                ...DoctorList.map(
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
                                    const SizedBox(width: 83),
                                    Checkbox(
                                        activeColor: const Color(0xff0C8A7D),
                                        side: const BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff0C8A7D),
                                            width: 2),
                                        value: item.value,
                                        onChanged: (value) =>
                                            onItemClicked(item)),
                                    const SizedBox(width: 100),
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
                                    const SizedBox(width: 15),
                                    Text(item.id,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36)),
                                    const SizedBox(width: 50),
                                    Text(item.phone,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36)),
                                    const SizedBox(width: 118),
                                    Text(item.role,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36,
                                            fontWeight: FontWeight.normal)),
                                    const SizedBox(width: 140),
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
                                                                        right:
                                                                            5),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Name",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            text =
                                                                                value;
                                                                          });
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "ID",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            text =
                                                                                value;
                                                                          });
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Phone",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            text =
                                                                                value;
                                                                          });
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Role",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {
                                                                            text =
                                                                                value;
                                                                          });
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
                                                                              FontWeight.bold)),
                                                                  onPressed: () {
                                                                    /*nameController.text =
                                                                    DoctorList[index]
                                                                        .name;
                                                                idController.text =
                                                                    DoctorList[index]
                                                                        .id;
                                                                phoneController.text =
                                                                    DoctorList[index]
                                                                        .phone;
                                                                roleController.text =
                                                                    DoctorList[index]
                                                                        .role;*/
                                                                    setState(
                                                                        () {
                                                                      //selectedIndex =index;
                                                                      //DoctorList[index] =text;
                                                                    });
                                                                    Navigator.pop(
                                                                        context);
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
                                                DoctorList.removeAt(
                                                    DoctorList.indexOf(item));
                                              });
                                            })
                                      ]),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              /////////////////////////////////////////////////
              ListView(children: [
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
                            onChanged: (value) => onAllClicked2(allChecked)),
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
                        Text(allChecked.role,
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
                ...AssistantList.map(
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
                                    const SizedBox(width: 83),
                                    Checkbox(
                                        activeColor: const Color(0xff0C8A7D),
                                        side: const BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff0C8A7D),
                                            width: 2),
                                        value: item.value,
                                        onChanged: (value) =>
                                            onItemClicked(item)),
                                    const SizedBox(width: 100),
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
                                    const SizedBox(width: 13),
                                    Text(item.id,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36)),
                                    const SizedBox(width: 60),
                                    Text(item.phone,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36)),
                                    const SizedBox(width: 90),
                                    Text(item.role,
                                        style: const TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 36,
                                            fontWeight: FontWeight.normal)),
                                    const SizedBox(width: 130),
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
                                                                        right:
                                                                            5),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Name",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "ID",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Phone",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
                                                                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D)))),
                                                                        onChanged:
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                      TextField(
                                                                        cursorColor:
                                                                            const Color(0xff0C8A7D),
                                                                        decoration: const InputDecoration(
                                                                            labelText:
                                                                                "Role",
                                                                            labelStyle:
                                                                                TextStyle(color: Color(0xff0C8A7D), fontSize: 18),
                                                                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff0C8A7D))),
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
                                                                              FontWeight.bold)),
                                                                  onPressed: () {
                                                                    /*nameController.text =
                                                                    AssistantList[index]
                                                                        .name;
                                                                idController.text =
                                                                    AssistantList[index]
                                                                        .id;
                                                                phoneController.text =
                                                                    AssistantList[index]
                                                                        .phone;
                                                                roleController.text =
                                                                    AssistantList[index]
                                                                        .role;*/
                                                                    setState(
                                                                        () {
                                                                      //selectedIndex = index;
                                                                    });
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
                                                AssistantList.removeAt(
                                                    AssistantList.indexOf(
                                                        item));
                                              });
                                            })
                                      ]),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ]),
          ),
        ),
      ),
    );
  }

  onAllClicked1(CheckBoxModel ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      DoctorList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onAllClicked2(CheckBoxModel ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      AssistantList.forEach((element) {
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

class CheckBoxModel {
  CheckBoxModel(
      {required this.name,
      required this.id,
      required this.phone,
      required this.role,
      required this.action});

  String name, id, phone, role, action;
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
    return const Text("Result"); //غالبا هيبقى البروفايل بتاع الشخص اللي اختارته
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
