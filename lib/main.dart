import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'userProfile.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'First',
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            image: Image.asset('images/cook.png',width: 300,height: 300,)
          ),
          PageViewModel(
              title: 'Second',
              body: 'This is second description',
              image: Image.asset('images/deliver.png',width: 300,height: 300,)
          ),
          PageViewModel(
              title: 'First',
              body: 'This is first description',
              image: Image.asset('images/order.png',width: 300,height: 300,)
          ),
        ],
        onDone: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const UserProfile();
          }));
        },
        done: const Text('Done'),
        skip: const Text('Skip'),
        next: const Text("Next"),
        back: const Text('Back'),
      ),
    );
  }
}
