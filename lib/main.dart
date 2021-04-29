import 'package:flutter/material.dart';

void main() => runApp(MyPortfolio());

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 10),
          child: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xFF3A5160).withOpacity(0.6),
                        offset: const Offset(2.0, 4.0),
                        blurRadius: 8),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(60.0)),
                  child: Image.network(
                      'https://media-exp1.licdn.com/dms/image/C4E03AQF4OXODp7vRkg/profile-displayphoto-shrink_800_800/0/1582558953253?e=1625097600&v=beta&t=IZyg9QgzZAz30JM_cbOVtzSN-Zm3pa0yVWVrADTrAZU',
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                    child: Column(
                  children: [
                    Text('EKUNDAYO ADEBAYO',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontSize: 20,
                          color: Colors.grey[900],
                        )),
                    Text('Code Heart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2,
                          fontSize: 12,
                          color: Colors.grey,
                        )),
                  ],
                )),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                TextHeads(
                  text: 'Summary',
                ),
                Texts(
                    text:
                        '''Naturally, I am gifted in learning, it is a hobby that I have developed over time and today I believe it is my greatest selling point. With the help of my ability to learn, I have developed a penchant for problem-solving, creative thinking, other vital soft skills and I'm still learning. For me learning is important and my career goal is to be in a work environment that promotes healthy learning as well as gives an opportunity to practice what is being learned.
                One day, I hope to be in a room filled with brilliant minds from all over, sharing ideas and developing tactics and business solutions that will shape the course of history. I want to be on a team where I am instrumental in developing things that will help people lead better lives.
                One thing is sure though, I'm a workaholic. I value hard work as well as smart work (I believe they go hand in hand), but I also love taking quality timeouts and that brings me to my second joy giver "Video Games", the best thing since sliced bread, just can't get enough of it and will definitely want to build a game that tells my own story.
                    '''),
                TextHeads(
                  text: 'Interests',
                ),
                Listings(
                  text: 'Football ',
                ),
                Listings(
                  text: 'Data Science',
                ),
                Listings(
                  text: 'Problem Solving ',
                ),
                Listings(
                  text: 'Travelling & Culture',
                ),
                Listings(
                  text: 'Digital Education & Learning ',
                ),
                Listings(
                  text: 'Public Speaking & Spoken Word Poetry ',
                ),
                TextHeads(
                  text: 'Skills',
                ),
                Listings(
                  text: 'Critical thinking',
                ),
                Listings(
                  text: 'Clear writing and Report writing',
                ),
                Listings(
                  text: 'Creativity & Organization ',
                ),
                TextHeads(
                  text: 'Contacts',
                ),
                ListingsIcon(
                  text: '+2348097497328',
                  icon: Icons.phone_android_sharp,
                  color: Colors.lightBlueAccent,
                ),
                ListingsIcon(
                  text: 'debayo71@gmail.com',
                  icon: Icons.email_sharp,
                  color: Colors.green,
                ),
                ListingsIcon(
                  text: 'linkedin.com/in/ekundayo-adebayo-4a595b19b/',
                  icon: Icons.link_sharp,
                  color: Colors.blue,
                ),
                ListingsIcon(
                  text: 'AdebayoGit',
                  icon: Icons.device_hub,
                  color: Colors.grey[900],
                ),
              ],
            ),
          ),
        )
      ]),
    ));
  }
}

class Divides extends StatelessWidget {
  final double pad;
  final double indentLenght;
  const Divides({
    Key key,
    this.pad = 20,
    this.indentLenght = 50,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: pad),
      child: Divider(
        color: Color.fromRGBO(2, 33, 2, 0.3),
        endIndent: indentLenght,
        thickness: 1,
      ),
    );
  }
}

class Listings extends StatelessWidget {
  final String text;
  const Listings({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Container(
              color: Color.fromRGBO(2, 33, 2, 0.2),
              child: SizedBox(
                height: 10,
                width: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ));
  }
}

class ListingsIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const ListingsIcon({
    Key key,
    this.text,
    this.icon,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ));
  }
}

class Texts extends StatelessWidget {
  final String text;
  const Texts({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class TextHeads extends StatelessWidget {
  final String text;
  const TextHeads({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divides(pad: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Divides(
          pad: 0,
          indentLenght: 100,
        ),
      ],
    );
  }
}
