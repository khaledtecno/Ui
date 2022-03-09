import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui Ios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(title: 'Ui Ios'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/uiback.jpg",),
            fit: BoxFit.cover
          ),

        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.8),
                  Colors.white.withOpacity(.3),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.8),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login ,", style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26
                      ),),
                      SizedBox(height: 8,),
                      Text("Enter your details ,", style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 15
                      ),),
                      SizedBox(height: 22,),

                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: 'Label text',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.error,
                          ),
                        ),
                      ),
                      SizedBox(height: 18,),

                      Divider(height: 2,thickness: 1,color: Colors.grey,),
                      SizedBox(height: 18,),

                      TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: 'Label text',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                      SizedBox(height: 18,),
                      SizedBox(height: 18,),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(.9),
                          borderRadius: BorderRadius.circular(28)
                        ),
                        child: Center(child: Text("Start Now", style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18
                        ),),),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),

      )
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
