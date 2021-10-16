import 'package:flutter/material.dart';
import 'components/quote_card.dart';
import 'helpers/quote.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get children => null;

  int ninjaLevel = 0;

  List<Quote> quotes = [
    Quote(text: 'he is working hard', author: 'Gideon'),
    Quote(text: 'He has a very bright future', author: 'Gideon'),
    Quote(text: 'He attracted to abundance', author: 'God')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Nija ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            ninjaLevel += 1;
          })
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10.0),
              Text('Chun Li',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 30.0),
              const Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Level $ninjaLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'chunli@ninja.com',
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2.0,
                        fontSize: 18.0),
                  )
                ],
              ),
              Column(
                children: quotes
                    .map((quote) => QuoteCard(
                          quote: quote,
                          delete: () {
                            setState(() {
                              quotes.remove(quote);
                            });
                          },
                        ))
                    .toList(),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
