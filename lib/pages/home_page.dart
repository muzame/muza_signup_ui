import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.black87,
              Colors.black54,
              Colors.black26,
            ],
          )
        ),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 60,),

            // #header
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Sing Up', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Welome', style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            ),

            SizedBox(height: 60,),

            // #body
            Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // #registration
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20, offset: Offset(0,10)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              // #register_fullname
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Fullname',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),

                              // #register_email
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              //#register_phone
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Phone',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              // #register_password
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40,),

                        // #sign_up_part
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          width: double.infinity,
                          child: Center(child: Text('SignUp', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),),),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(30)
                          ),
                        ),

                        SizedBox(height: 30,),

                        Text('Sign Up with SNS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),

                        SizedBox(height: 30,),

                        Row(
                          children: [
                            // #facebook
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(child: Text("Facebook", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),),),
                              ),
                            ),

                            SizedBox(width: 10,),
                            // #facebook
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(child: Text("Google", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),),),
                              ),
                            ),

                            SizedBox(width: 10,),
                            // #facebook
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Center(child: Text("Apple", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),),),
                              ),
                            ),
                          ],
                        ),



                      ],
                    ),
                  )

                )
            ),
          ],
        ),
      ),
    );
  }
}
