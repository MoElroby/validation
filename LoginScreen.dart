import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var Emailcontroller = TextEditingController();
  var Passwordcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                          fit: BoxFit.fill,

                          image: NetworkImage(
                            "https://cdn.al-ain.com/lg/images/2021/11/16/127-110635-mohamed-saad-films-cinema_700x400.jpg",
                          ),
                          // fit: BoxFit.fill ,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // TextFormField(
                  //   controller: Emailcontroller,
                  //   keyboardType: TextInputType.emailAddress,
                  //   onFieldSubmitted: (value) {
                  //     print(value);
                  //   },
                  //   onChanged: (value) {
                  //     print(value);
                  //   },
                  //   validator: (value)
                  //   {
                  //      if(value!.isEmpty)
                  //        {
                  //          return "email must not be empty" ;
                  //        }
                  //      else
                  //        {
                  //          return null ;
                  //        }
                  //   },
                  //   decoration: InputDecoration(
                  //       labelText: "EMAIL",
                  //       prefixIcon: Icon(Icons.email),
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(5))),
                  // ),
                  SizedBox(height: 15),
                  defaultFormField(
                    onchange: (value){print("hello");  },

                      onsubmited:(value){print("hello");  },
                      controler: Emailcontroller,
                      type: TextInputType.emailAddress,
                      label: "ُEmail",
                      prefix: Icons.email,
                      valiadtror: (value)
                      {
                         if(value!.isEmpty)
                           {
                             return "email must not be empty" ;
                           }
                         else
                           {

                           }
                      },

                      ),

                  SizedBox(height: 20),

                  defaultFormField(
                    onchange: (value){print("hello");  },

                    onsubmited:(value){print("hello");  },
                    controler: Passwordcontroller,
                    type: TextInputType.visiblePassword,
                    label: "Password",
                    prefix: Icons.lock,
                    valiadtror: (value)
                    {
                      if(value == null || value.isEmpty)
                      {
                        return "email must not be empty" ;
                      }
                      else
                      {
                        return "email must not be empty" ;


                      }
                    },

                  ),

                  SizedBox(height: 25),


                  defaultButton(
                      text: "login",
                      width: double.infinity,
                      background: Colors.red,
                      radius: 15,
                      function : () {
                        if (formkey.currentState!.validate())
                        {
                               print(Emailcontroller.text) ;
                               print(Passwordcontroller.text) ;
                        }

                      }),

                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don\'t have an accout "),
                      TextButton(onPressed: () {}, child: Text("REGISTER NOW"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
