import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:invitation/firebase_options.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Color(0xff0d1f23)),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText1 = 'Yes';
  String buttonText2 = 'No';
  String accepted1 = '';
  String accepted2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/a.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/b.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/c.png'))),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/screen.png'))),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: null),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0D7A4B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              accepted1 = 'Greattt !!! I love youu !!';
                              accepted2 = 'Please call +91 9987 98424';
                            });
                          },
                          child: AutoSizeText(
                            buttonText1,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          buttonText2 = 'Yes';
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          buttonText2 = 'No';
                        });
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffB31522),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            onPressed: () {
                              setState(() {
                                accepted1 = 'Greattt !!! I love youu !!';
                                accepted2 = 'Please call +91 9987 98424';
                              });
                            },
                            child: AutoSizeText(
                              buttonText2,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                AutoSizeText(
                  accepted1,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                AutoSizeText(
                  accepted2,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/d.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/e.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image(image: AssetImage('assets/f.png'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
