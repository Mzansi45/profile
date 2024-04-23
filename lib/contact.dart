import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            // Get in touch with me
            Text(
              "Get in touch with me",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 199, 120, 1)),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            const Text(
                'I am always open to discuss new projects, creative ideas or opportunities to be part of your visions. Feel free to contact me.',
                style: TextStyle(fontSize: 20, color: Colors.white)),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            Row(
              children: [
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.5,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 199, 120, 1),
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
                                    MediaQuery.of(context).size.width * 0.01,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
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
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                            ),
                            label: Text("Enter name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.01)),
                          ),
                          style: const TextStyle(color: Colors.white),
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
                          style: const TextStyle(color: Colors.white),
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
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                            ),
                            label: Text("Message",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.01)),
                            alignLabelWithHint: true,
                          ),
                          style: const TextStyle(color: Colors.white),
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
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 199, 120, 1),
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
                          color: const Color.fromARGB(255, 199, 120, 1),
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
                                color: Colors.white)),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Arcadia, Pretoria South Africa",
                                style: TextStyle(color: Colors.white)),
                            Divider(
                                color: Color.fromARGB(255, 199, 120, 1),
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.location_on_outlined,
                            size: MediaQuery.of(context).size.width * 0.018,
                            color: Colors.white60),
                      ),

                      // Phone
                      ListTile(
                        title: Text("Phone",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("given on request via email",
                                style: TextStyle(color: Colors.white)),
                            Divider(
                                color: Color.fromARGB(255, 199, 120, 1),
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.phone_outlined,
                            size: MediaQuery.of(context).size.width * 0.018,
                            color: Colors.white60),
                      ),

                      // Email
                      // Phone
                      ListTile(
                        title: Text("Email",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.012,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "thulanegulube@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Divider(
                                color: Color.fromARGB(255, 199, 120, 1),
                                thickness: 2),
                          ],
                        ),
                        leading: Icon(Icons.mail_outline,
                            size: MediaQuery.of(context).size.width * 0.018,
                            color: Colors.white60),
                      ),

                      // socials (X, Github, LinkedIn, Whatsapp)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.xTwitter,
                                color: Colors.black,
                                size: MediaQuery.of(context).size.width * 0.018,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.black,
                                size: MediaQuery.of(context).size.width * 0.018,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.blue[700],
                                size: MediaQuery.of(context).size.width * 0.018,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green[700],
                                size: MediaQuery.of(context).size.width * 0.018,
                              )),
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
