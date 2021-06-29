// main.dart
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'login_ui',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        accentColor: Colors.pink,
      ),
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: Color(0xFFEFEEEE)
         ),
      child: Scaffold(
          // resizeToAvoidBottomInset: false, 
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Image.asset('assets/main.png'),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top:20),
                    child: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                          padding: EdgeInsets.only(top:40),
                          child: Text('',style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold
                          ),),
                          
                          ),
                          SizedBox(height: 30.0,),
                          Container(
                            decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                             color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                            width: 250,
                            child: TextField(
                                        decoration: InputDecoration(
                                        border: OutlineInputBorder(),  
                                        hintText: 'USERNAME',
                                        hintStyle: TextStyle(
                                          letterSpacing: 4,
                                        ),
                                        suffixIcon: Icon(Icons.mark_email_read_rounded)
                                        
                                        
                  
                                      ),
                                      ),
                          ),
                                    SizedBox(height: 40.0,),
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: Color(0xFFEFEEEE),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                                        width:200 ,
                                        child: TextField(
                                          decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'PIN',
                                          counterText: "",
                                          hintStyle: TextStyle(
                                            letterSpacing: 3,
                                          ),
                                          suffixIcon: Icon(Icons.pin),
                                        ),
                                        obscureText: true,
                                        maxLength: 4,
                                        keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 60.0,),
          
                                    SizedBox(
                                      height: 40,
                                      width: 150,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: const Text('LOG IN',style: TextStyle(
                                            letterSpacing: 2,
                                            wordSpacing: 3,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          
                                          
                                          style: ElevatedButton.styleFrom(
                                            elevation: 9,
                                            shape: RoundedRectangleBorder( //to set border radius to button
                                              borderRadius: BorderRadius.circular(30)
                                            ),
                                          ),
                                        ),
                                    ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}