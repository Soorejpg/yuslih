import 'package:flutter/material.dart';
import 'package:yuslih/main.dart';
import 'package:yuslih/registration.dart';

import 'helpus.dart';

class Personalinformation extends StatefulWidget {
   Personalinformation({Key? key}) : super(key: key);

  @override
  State<Personalinformation> createState() => _PersonalinformationState();
}

class _PersonalinformationState extends State<Personalinformation> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(padding: const EdgeInsets.only(top: 45, left: 10,right: 350),
                child: IconButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Home()),
                  );
                }, icon: Icon(Icons.arrow_back_ios))
              ),
              Padding(padding: const EdgeInsets.only(top: 258, left: 15,),
                child: Text('Personal Information'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Let’s know each other better',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,  top: 25,right: 16),
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
              ),
              border: OutlineInputBorder(),
              label: Text("Your Name"),

              ),
      ),
      ),
        Padding(
          padding: const EdgeInsets.only(left: 16,  top: 19,right: 16),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                ),
                border: OutlineInputBorder(),
                label: Text("Phone number"),
          ),
        ),
        ),
              Padding(padding: const EdgeInsets.only(top: 67.5, left: 15,right: 15),
                child:  ElevatedButton(
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Helpus()),
                      );
                    }

                ),
              ),

            ],
          ),
        )
    );
  }
}
