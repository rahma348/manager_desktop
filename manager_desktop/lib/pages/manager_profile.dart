import 'package:doctor_app/pages/EditManagerProfile.dart';
import 'package:flutter/material.dart';

class ManagerProfile extends StatefulWidget {
  const ManagerProfile({super.key});
  @override
  State<ManagerProfile> createState() => _ManagerProfile();
}

class _ManagerProfile extends State<ManagerProfile> {
  // Define variables to store selected hours and minutes
  int _hour = 9;
  int _minute = 0;
  String _amPm = "Am";

  // Function to handle hour selection using a dropdown menu
  void _selectHour(int? hour) {
    setState(() {
      _hour = hour!;
    });
  }

  // Function to handle minute selection using a dropdown menu
  void _selectMinute(int? minute) {
    setState(() {
      _minute = minute!;
    });
  }

  // Function to handle Am/Pm selection using a dropdown menu
  void _selectAmPm(String? value) {
    if (value != null) {
      setState(() {
        _amPm = value;
      });
    }
  }

  String? name;
  String? role;
  String? email;
  String? phone;

  bool Saturday = false;
  bool Sunday = true;
  bool Monday = true;
  bool Tuesday = true;
  bool Wednesday = true;
  bool Thursday = true;
  bool Friday = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: const Text("Profile",
              style: TextStyle(
                  color: Color(0xff0C8A7D),
                  fontSize: 36,
                  fontWeight: FontWeight.normal)),
          actions: [
            TextButton(
              child: const Text("Edit",
                  style: TextStyle(
                      color: Color(0xffEE7666),
                      fontSize: 36,
                      fontWeight: FontWeight.normal)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EditProfile()));
              },
            ),
          ],
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xff0C8A7D), size: 30),
        ),
        body: Expanded(
            child: SingleChildScrollView(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                const SizedBox(width: 40),
                //container1
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  width: 500,
                  child: Stack(children: [
                    Column(children: [
                      // Profile image
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: const Color(0xff0C8A7D))),
                        child: Image.asset("assets/img/profile.png",
                            fit: BoxFit.cover),
                      ),
                      const SizedBox(height: 40),

                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
                          width: 450,
                          height: 60,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff0C8A7D)),
                              borderRadius: BorderRadius.circular(18)),
                          child: const Row(
                            children: [
                              Text('Name:',
                                  style: TextStyle(
                                      color: Color(0xff0C8A7D),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(width: 10),
                              Text('Nada Nasr',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
                          width: 450,
                          height: 60,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff0C8A7D)),
                              borderRadius: BorderRadius.circular(18)),
                          child: const Row(
                            children: [
                              Text('Phone:',
                                  style: TextStyle(
                                      color: Color(0xff0C8A7D),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(width: 10),
                              Text('+2011195252',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
                          width: 450,
                          height: 60,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff0C8A7D)),
                              borderRadius: BorderRadius.circular(18)),
                          child: const Row(
                            children: [
                              Text('E_mail:',
                                  style: TextStyle(
                                      color: Color(0xff0C8A7D),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(width: 10),
                              Text('Username@gmail.com',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
                          width: 450,
                          height: 60,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff0C8A7D)),
                              borderRadius: BorderRadius.circular(18)),
                          child: const Row(
                            children: [
                              Text('Role:',
                                  style: TextStyle(
                                      color: Color(0xff0C8A7D),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(width: 10),
                              Text('Admin,Doctor,Assistant',
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),

                      /*Positioned( 
                            left: 20,
                            bottom: 600,
                            child: Container(
                              color: Color(0xffFFFFFF),
                              child: Text("Name",
                              style: TextStyle(
                                  color:Color(0xff0C8A7D),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400
                                )),
                            ),
                              ),*/
                    ]),
                  ]),
                ),
                const SizedBox(width: 40),

                //container2
                Container(
                  //padding: const EdgeInsets.all(15),
                  //margin: const EdgeInsets.all(15),
                  width: 970,
                  height: 700,
                  /*decoration: BoxDecoration(
                      border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color(0xff096B61))),*/
                  child: Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 700),
                            child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),
                                    border: Border.all(
                                        color: const Color(0xff0C8A7D))),
                                child: const Text("Working hours",
                                    style: TextStyle(
                                        color: Color(0xff0C8A7D),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center)),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width: 140,
                                child: const Text("Sunday",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Switch(
                                activeColor: const Color(0xff0C8A7D),
                                activeTrackColor: const Color(0xffB0E3DC),
                                inactiveThumbColor: const Color(0xffD9D9D9),
                                inactiveTrackColor: const Color(0xffB0E3DC),
                                value: Sunday,
                                onChanged: (value) {
                                  setState(() {
                                    Sunday = value;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              Text(Sunday ? 'Open' : 'Closed',
                                  style: const TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 30),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: const Text("TO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width: 140,
                                child: const Text("Monday",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Switch(
                                activeColor: const Color(0xff0C8A7D),
                                activeTrackColor: const Color(0xffB0E3DC),
                                inactiveThumbColor: const Color(0xffD9D9D9),
                                inactiveTrackColor: const Color(0xffB0E3DC),
                                value: Monday,
                                onChanged: (value) {
                                  setState(() {
                                    Monday = value;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              Text(Monday ? 'Open' : 'Closed',
                                  style: const TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 30),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: const Text("TO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width: 140,
                                child: const Text("Tuesday",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Switch(
                                activeColor: const Color(0xff0C8A7D),
                                activeTrackColor: const Color(0xffB0E3DC),
                                inactiveThumbColor: const Color(0xffD9D9D9),
                                inactiveTrackColor: const Color(0xffB0E3DC),
                                value: Tuesday,
                                onChanged: (value) {
                                  setState(() {
                                    Tuesday = value;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              Text(Tuesday ? 'Open' : 'Closed',
                                  style: const TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 30),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: const Text("TO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width: 140,
                                child: const Text("Wednesday",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Switch(
                                activeColor: const Color(0xff0C8A7D),
                                activeTrackColor: const Color(0xffB0E3DC),
                                inactiveThumbColor: const Color(0xffD9D9D9),
                                inactiveTrackColor: const Color(0xffB0E3DC),
                                value: Wednesday,
                                onChanged: (value) {
                                  setState(() {
                                    Wednesday = value;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              Text(Wednesday ? 'Open' : 'Closed',
                                  style: const TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 30),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: const Text("TO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                          Container(
                            child: Row(children: [
                              Container(
                                width: 140,
                                child: const Text("Thursday",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Switch(
                                activeColor: const Color(0xff0C8A7D),
                                activeTrackColor: const Color(0xffB0E3DC),
                                inactiveThumbColor: const Color(0xffD9D9D9),
                                inactiveTrackColor: const Color(0xffB0E3DC),
                                value: Thursday,
                                onChanged: (value) {
                                  setState(() {
                                    Thursday = value;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              Text(Thursday ? 'Open' : 'Closed',
                                  style: const TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 30),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                child: const Text("TO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff096B61)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Hour dropdown menu
                                      DropdownButton<int>(
                                        value: _hour,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          12,
                                          (int index) => DropdownMenuItem<int>(
                                              value: index + 1,
                                              child: Text('${index + 1}',
                                                  style: const TextStyle(
                                                      color: Color(0xff000000),
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ),
                                        onChanged: _selectHour,
                                      ),
                                      const Text(':',
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      // Minute dropdown menu
                                      DropdownButton<int>(
                                        value: _minute,
                                        items: List<
                                            DropdownMenuItem<int>>.generate(
                                          60,
                                          (int index) => DropdownMenuItem<int>(
                                            value: index,
                                            child: Text(
                                                '${index.toString().padLeft(2, '0')}',
                                                style: const TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        onChanged: _selectMinute,
                                      ),
                                      DropdownButton<String>(
                                        value: _amPm,
                                        items: ['Am', 'Pm']
                                            .map((String value) =>
                                                DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff000000))),
                                                ))
                                            .toList(),
                                        onChanged:
                                            _selectAmPm, // Function to handle AM/PM selection
                                      ),
                                    ]),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                )
              ]),
            ),
          ]),
        )));
  }
}
