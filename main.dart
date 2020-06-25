import 'package:flutter/material.dart';
import 'package:flutterappe/note.dart';
import 'package:flutterappe/users.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'note.dart';


void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp])
      .then((_){
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // Initially display FirstPage
      home: FirstPage(),
    );
  }
}

_launchURL() async {
  const url = 'https://www.who.int/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // WHO link

_launchURL2() async {
  const url = 'https://www.worldometers.info/coronavirus/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // World o Meter link

_launchURL3() async {
  const url = 'https://documenter.getpostman.com/view/10808728/SzS8rjbc?version=latest';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // API link
_launchURL4() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/09/het-coronavirus-is-er---wat-moet-ik-doen';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // Coronavirus is er – Wat moet ik doen?
_launchURL5() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/09/brochure-coronavirus-en-bezoek-in-de-gehandicaptenzorg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // Coronavirus en bezoek in de gehandicaptenzorg
_launchURL6() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/30/brochure-coronavirus-eenvoudige-taal-zorg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} // Coronavirus en verwijzing naar de zorg
_launchURL7() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/30/brochure-informatie-over-het-corona-virus-en-de-zorg-op-de-intensive-care';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
} //  Coronavirus en de zorg op de Intensive Care


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Corona Tracking App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.yellow)),
              color: Colors.white,
              textColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              child: Text('Info pagina'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Infopage(data: 'Dit is de informatie pagina!'),
                  ),
                );
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.yellow)),
              color: Colors.white,
              textColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              child: Text('Dashboard'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Dashboard()
                  ),
                );
              },
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.yellow)),
              color: Colors.white,
              textColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              child: Text('Help pagina'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        HelpPage(data: 'Dit is de Help pagina!'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
} // home pagina

class heroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          title: new Text('Wash your hands'),
        ),
        body: Center(
            child: Hero(
                tag: 'Hero1',
                child: Material(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Text(
                        'Wash your hands for atleast 20 seconds.',
                        style: new TextStyle(
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic),
                      ),
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.yellow)),
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Text('Coronavirus is er – Wat moet ik doen?'),
                        onPressed: _launchURL4,
                      ),
                      new Image.asset(
                        'assets/images/handwassen.jpg',
                        height: 250.0,
                        width: 250.0,
                      ),
                    ],
                  ),
                )))));
  }
} // hero page

class heroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
            title: new Text('Distance'),
        ),
        body: Center(
            child: Hero(
                tag: 'Hero2',
                child: Material(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Text(
                        'Keep your distance.',
                        style: new TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic),
                      ),
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.yellow)),
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Text('bezoek in de gehandicaptenzorg'),
                        onPressed: _launchURL5,
                      ),
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.yellow)),
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Text('Coronavirus en de zorg op de Intensive Care'),
                        onPressed: _launchURL7,
                      ),
                      new Image.asset(
                        'assets/images/distance.jpg',
                        height: 250.0,
                        width: 250.0,
                      ),
                    ],
                  ),
                )))));
  }
} // hero page 2

class heroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          title: new Text(''),
        ),
        body: Center(
            child: Hero(
                tag: 'Hero3',
                child: Material(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new Text(
                        'Wear a facemask and medical gloves.',
                        style: new TextStyle(
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic),
                      ),
                      new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.yellow)),
                        color: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        child: Text('Coronavirus en verwijzing naar de zorg'),
                        onPressed: _launchURL6,
                      ),
                      Expanded(
                      child: Row(
                        children: [
                      new Image.asset(
                        'assets/images/masker.jpg',
                        height: 170.0,
                        width: 170.0,
                      ),
                      new Image.asset(
                        'assets/images/gloves.jpg',
                        height: 170.0,
                        width: 170.0,
                      ),
                        ],
                      ),
                      ),
                    ],
                  ),
                )))));
  }
} // hero page 3

class Infopage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  Infopage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Info & Sources'),
        ),
        body: Center(
          child: Container(
            child: Column(children: [
              new Image.asset('assets/images/foto.jpg', fit: BoxFit.cover),
              new Text(
                "*The actual amount of infected may vary from the listed amounts of infected because not everyone that could be contamintated is tested.",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              new Text(""),
              new Text(
                "**There is a delay between the day of hospitalization or death and the day said person got admitted to the hospital.",
                style: new TextStyle(
                    fontSize: 13.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              new Text(""),
              new Image.asset('assets/images/SS.png',
                  height: 200.0, fit: BoxFit.cover),
              new Text("Sources:",
                  style: new TextStyle(
                      fontSize: 18.0)),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                new RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.yellow)),
                  color: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text('WHO'),
                  onPressed: _launchURL,
                ),
                new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.yellow)),
                      color: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      child: Text('World O Meter'),
                      onPressed: _launchURL2,
                    ),
                    new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.yellow)),
                      color: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      child: Text('API'),
                      onPressed: _launchURL3,
                    ),
              ]),
            ]),
          ),
        ));
  }
} // Info & Sources page

class HelpPage extends StatelessWidget {
  final String data;

  HelpPage({
    Key key,
    @required this.data,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Help pagina'),
        ),
        body: Center(
            heightFactor: 2.3,
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              new Text(
                  'If you live in the netherlands and have any questions about',
                  style: new TextStyle(
                      fontSize: 13.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              new Text(
                  'COVID-19 you can call 0800-1351 to get additional information.',
                  style: new TextStyle(
                      fontSize: 13.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              new Text('Want to help?',
                  style: new TextStyle(
                      fontSize: 40.0, fontStyle: FontStyle.italic, height: 1.5)),
                      new Text('Follow the steps down below to',
                          style: new TextStyle(
                              fontSize: 20.0, fontStyle: FontStyle.italic, height: 3, fontWeight: FontWeight.bold)),
                      new Text('maximize your safety outside:',
                          style: new TextStyle(
                              fontSize: 20.0, fontStyle: FontStyle.italic, height: 1, fontWeight: FontWeight.bold)),
                      new RaisedButton(
                          child: Text("Portrait"),
                          onPressed: (){
                            SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                          }),
                      new RaisedButton(
                          child: Text("landscape"),
                          onPressed: (){
                            SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
                          }),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        new Container(
                            child: Hero(
                            tag: 'Hero1',
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => heroPage1())),
                              child: Image.asset(
                                'assets/images/handwassen.jpg',
                                height: 250.0,
                                width: 100.0,
                              ),
                            ))),
                        new Container(
                            child: Hero(
                                tag: 'Hero2',
                                child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => heroPage2())),
                                    child: Image.asset(
                                      'assets/images/distance.jpg',
                                      height: 250.0,
                                      width: 150.0,
                        )
                                ),
                            ),
                        ),
                        new Container(
                          child: Hero(
                            tag: 'Hero3',
                            child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => heroPage3())),
                                child: Image.asset(
                                  'assets/images/masker.jpg',
                                  height: 250.0,
                                  width: 100.0,
                                )
                            ),
                          ),
                        ),
                      ],
                  ),
              ),
                    ]
                )
            )
        )
    );
  }
} // How to stay safe page

class Dashboard extends StatefulWidget {
  Dashboard2 createState() => Dashboard2();
}
class Dashboard2 extends State<Dashboard> {

  Future<String> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://api.covid19api.com/summary"),
      headers: {
        "Accept": "application/json",
      },
    );
    Map data = json.decode(response.body);
    print(data);
  }

  List<Wereld> welcome = List<Wereld>();

  Future<List<Wereld>> fetchNotes() async {
    var url = 'https://api.covid19api.com/summary';
    var response = await http.get(url);

    var notes = List<Wereld>();

    if (response.statusCode == 200) {
      var welcomeJson = json.decode(response.body);
      for (var noteJson in welcomeJson) {
        notes.add(Wereld.fromJson(noteJson));
      }
    }
    return notes;
  }

  List<Wereld> _Wereld;
  bool _loading;

  /*@override
  void initState() {
    super.initState();
    _loading = true;
    Services.getusers().then((Wereld) {
      _Wereld = Wereld;
      _loading = false;
    });
  }*/

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _Wereld.addAll(value);
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Corona Tracker'),
        ),
        body: Container(
          color: Colors.grey,
          child: ListView.builder(
              itemCount: _Wereld.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0,bottom: 32.0,right: 16.0,left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                    _Wereld[index].totalConfirmed.toString(), // Total Confirmed
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Text(
                            _Wereld[index].totalDeaths.toString(), // total Deaths
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        Text(
                            _Wereld[index].totalRecovered.toString(),  // Total Recovered
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        ],
                    ),
                  )
                );
              }
          ),
        )
    );
  } // Live counts page
}