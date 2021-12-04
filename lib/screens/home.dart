import 'package:flutter/material.dart';
// import 'package:weatherapp/model/model.dart';
import 'package:weatherapp/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getuser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return SizedBox(
                height: 20,
                width: 20,
                child: ElevatedButton(
                  onPressed: () {
                    getuser();
                  },
                  child: const Text('data'),
                ),
              );
            }
          }),
    );
  }
}
// class Currentweather extends StatefulWidget {
//   const Currentweather({Key? key}) : super(key: key);

//   @override
//   _CurrentweatherState createState() => _CurrentweatherState();
// }

// class _CurrentweatherState extends State<Currentweather> {
//   Future<Weather>? weatherData;

//   @override
//   void initState() {
//     super.initState();
//     weatherData = load_data();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         // decoration: BoxDecoration(
//         //   image: DecorationImage(

//         //       image: AssetImage("assets/images/background.jpg"),
//         //       fit: BoxFit.cover),

//         //   //gradient: LinearGradient(
//         //   //begin: Alignment.topCenter,
//         //   // colors: [Colors.yellow[600], Colors.orange, Colors.red])
//         // ),
//         child: FutureBuilder<Weather>(
//           future: weatherData,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Column(
//                 children: [
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.1),
//                   Text(
//                     "${snapshot.data!.temp} °C",
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     snapshot.data!.name,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     snapshot.data!.main,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   // SizedBox(height:MediaQuery.of(context).size.height*0.01),
//                   // RaisedButton(onPressed: (){
//                   //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Buttonn()));

//                   // },
//                   // child: Text("Search By City",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.5),),
//                   // shape: RoundedRectangleBorder(
//                   //   borderRadius: new BorderRadius.circular(6.0),

//                   // ),

//                   // elevation: 15,
//                   // ),
//                   const SizedBox(height: 20),
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.35),
//                 ],
//               );
//             } else if (snapshot.hasError) {
//               return Text("${snapshot.error}");
//             }

//             return const Text(" ");
//           },
//         ),
//       ),
//     );
//   }
// }
