import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact.dart';

final formkey = GlobalKey<FormState>();

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                    size: 40,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Create New Contact",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => first()),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Saved")));
                      }
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      "images/download.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 230, top: 200),
                    child: Icon(
                      Icons.add_a_photo_sharp,
                      size: 30,
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 330,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 30),
                        child: Icon(Icons.sim_card),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Text(
                          "Saving to",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 18),
                        child: Icon(
                          Icons.expand_more,
                          size: 40,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                  height: 300,
                  width: 330,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: Offset(
                              3.0,
                              3.0,
                            )),
                      ],
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "enter your name";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "enter your name";
                              }
                              return null;
                            },
                          ),
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
