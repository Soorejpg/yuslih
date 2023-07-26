import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuslih/dashh.dart';
import 'helpus.dart';

class Photo extends StatefulWidget {
   Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  final _formKey = GlobalKey<FormState>();
  var id1=TextEditingController();
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
                      MaterialPageRoute(builder: (context) =>  Helpus()),
                    );
                  }, icon: Icon(Icons.arrow_back_ios))
              ),
              Padding(padding: const EdgeInsets.only(top: 120, left: 15,),
                child: Text('Almost there'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Let’s finish registration",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28,left: 132,right: 132),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 100,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 35, left: 15,),
                child: Text('Adhar Verification',style: TextStyle( fontSize: 14)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left:15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 45,
                        width: 101,
                        child: TextFormField(

                          validator: (value) {
                            return value?.length!=4?"enter four digit ":null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 45,
                        width: 101,
                        child: TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            return value?.length!=4?"enter four digit ":null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 45,
                        width: 101,
                        child: TextFormField(
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            return value?.length!=4?"enter four digit ":null;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 44),
                child: ElevatedButton(
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
    MaterialPageRoute(builder: (context) => DashBoard2()),
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
