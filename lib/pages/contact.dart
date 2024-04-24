import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Future<void> _launchUrl(String link) async {
    try {
      var url = Uri.parse(link);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    } on Exception {
      // TODO
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          /*decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                fit: BoxFit.fill),
          ),*/
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            // Get in touch with me
            Text(
              "Get in touch with me",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            //Sub heading text
            Text(
                'I am always open to discuss new projects, creative ideas or opportunities to be part of your visions. Feel free to contact me.',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.015,
                    color: Colors.white)),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            // Contact form
            Row(
              children: [
                const Spacer(),

                // send message form
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.5,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.tertiary,
                        width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.01),
                        child: Text("AVAILABLE 24/7",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.tertiary)),
                      ),

                      // Name
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                            bottom: MediaQuery.of(context).size.width * 0.003,
                            top: MediaQuery.of(context).size.width * 0.01),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            label: Text("Enter name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.01)),
                          ),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),

                      // Email
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                            bottom: MediaQuery.of(context).size.width * 0.003,
                            top: MediaQuery.of(context).size.width * 0.003),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                            ),
                            label: Text("Enter email",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.01)),
                          ),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),

                      //message
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                            bottom: MediaQuery.of(context).size.width * 0.003,
                            top: MediaQuery.of(context).size.width * 0.003),
                        child: TextFormField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            label: Text("Message",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.01)),
                            alignLabelWithHint: true,
                          ),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                      ),

                      //send message
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.01,
                            right: MediaQuery.of(context).size.width * 0.01,
                            bottom: MediaQuery.of(context).size.width * 0.003,
                            top: MediaQuery.of(context).size.width * 0.003),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(0, 65, 39, 0)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ))),
                          ),
                          child: const Text("Send message",
                              style: TextStyle(color: Colors.white60)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.5,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                          width: 1)),
                  child: Center(
                    child: Wrap(children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      // Location
                      ListTile(
                        title: Text("Location",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.tertiary)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Arcadia, Pretoria South Africa",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface)),
                            Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.location_on_outlined,
                            size: MediaQuery.of(context).size.width * 0.015,
                            color: const Color.fromARGB(255, 4, 143, 223)),
                      ),

                      // Phone
                      ListTile(
                        title: Text("Phone",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.tertiary)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("given on request via email",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface)),
                            Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.phone_outlined,
                            size: MediaQuery.of(context).size.width * 0.015,
                            color: const Color.fromARGB(255, 4, 143, 223)),
                      ),

                      // Email
                      // Phone
                      ListTile(
                        title: Text("Email",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.tertiary)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "thulanegulube@gmail.com",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.mail_outline,
                            size: MediaQuery.of(context).size.width * 0.015,
                            color: const Color.fromARGB(255, 4, 143, 223)),
                      ),

                      // socials (X, Github, LinkedIn, Whatsapp)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                // open twitter
                                _launchUrl("https://twitter.com/t_gulube");
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.xTwitter,
                                color: Colors.grey,
                                size: MediaQuery.of(context).size.width * 0.018,
                              ).animate().scale(
                                  begin: Offset(0, 0),
                                  end: Offset(1, 1),
                                  duration: Duration(seconds: 3),
                                  curve: Curves.easeInOut)),
                          IconButton(
                            onPressed: () {
                              // open github
                              _launchUrl('https://github.com/mzansi45');
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.grey,
                              size: MediaQuery.of(context).size.width * 0.018,
                            ).animate().scale(
                                begin: Offset(0, 0),
                                end: Offset(1, 1),
                                duration: Duration(seconds: 3),
                                curve: Curves.easeInOut),
                          ),
                          IconButton(
                              onPressed: () {
                                // open linkedin
                                _launchUrl(
                                    'https://www.linkedin.com/in/mzansi45/');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.blue[700],
                                size: MediaQuery.of(context).size.width * 0.018,
                              ).animate().scale(
                                  begin: Offset(0, 0),
                                  end: Offset(1, 1),
                                  duration: Duration(seconds: 3),
                                  curve: Curves.easeInOut)),
                          IconButton(
                              onPressed: () {
                                // open whatsapp
                                //https://wa.me/27821234567
                                _launchUrl('https://wa.me/27637251905');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green[700],
                                size: MediaQuery.of(context).size.width * 0.018,
                              ).animate().scale(
                                  begin: Offset(0, 0),
                                  end: Offset(1, 1),
                                  duration: Duration(seconds: 3),
                                  curve: Curves.easeInOut)),
                        ],
                      ),
                    ]),
                  ),
                ),
                const Spacer()
              ],
            )
          ])),
        ),
      ),
    );
  }
}
