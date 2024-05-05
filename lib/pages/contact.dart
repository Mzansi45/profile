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
    if (MediaQuery.sizeOf(context).width <= 1000) {
      return Scaffold(
        body: ListView(children: [
          Text(
            "Get in touch with me",
            textAlign: TextAlign.center,
            style: TextStyle(
                //fontSize: MediaQuery.of(context).size.width * 0.04,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.tertiary),
          ),
          const Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                'I am always open to discuss new projects, creative ideas or opportunities to be part of your visions. Feel free to contact me.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    //fontSize: MediaQuery.of(context).size.width * 0.015,
                    fontSize: 10,
                    color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AVAILABLE 24/7",
                    style: TextStyle(
                        //fontSize: MediaQuery.of(context).size.width * 0.012,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.tertiary)),
        
                const SizedBox(height: 10),
                // Name
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    label: const Text(
                      "Enter name",
                    ),
                  ),
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                ),
        
                const SizedBox(height: 5),
                // Email
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    label: Text(
                      "Enter email",
                    ),
                  ),
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                ),
        
                const SizedBox(height: 5),
                //message
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    label: const Text(
                      "Message",
                    ),
                    alignLabelWithHint: true,
                  ),
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onSurface),
                ),
        
                const SizedBox(height: 5),
                //send message
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(0, 65, 39, 0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary,
                        ))),
                  ),
                  child: const Text("Send message",
                      style: TextStyle(color: Colors.white60)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Wrap(children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                // Location
                ListTile(
                  title: Text("Location",
                      style: TextStyle(
                          //fontSize:MediaQuery.of(context).size.width * 0.012,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Arcadia, Pretoria South Africa",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface)),
                      Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 2),
                    ],
                  ),
                  leading: const Icon(Icons.location_on_outlined,
                      //size: MediaQuery.of(context).size.width * 0.015,
                      size: 20,
                      color: Color.fromARGB(255, 4, 143, 223)),
                ),
        
                // Phone
                ListTile(
                  title: Text("Phone",
                      style: TextStyle(
                          //fontSize: MediaQuery.of(context).size.width * 0.012,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("given on request via email",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface)),
                      Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 2),
                    ],
                  ),
                  leading: const Icon(Icons.phone_outlined,
                      //size: MediaQuery.of(context).size.width * 0.015,
                      size: 20,
                      color: Color.fromARGB(255, 4, 143, 223)),
                ),
        
                // Email
                // Phone
                ListTile(
                  title: Text("Email",
                      style: TextStyle(
                          //fontSize: MediaQuery.of(context).size.width * 0.012,
                          fontSize: 22,
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
                  leading: const Icon(Icons.mail_outline,
                      //size: MediaQuery.of(context).size.width * 0.015,
                      size: 20,
                      color: Color.fromARGB(255, 4, 143, 223)),
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
                        icon: const FaIcon(
                          FontAwesomeIcons.xTwitter,
                          color: Colors.grey,
                          //size: MediaQuery.of(context).size.width * 0.018,
                          size: 25,
                        ).animate().scale(
                            begin: const Offset(0, 0),
                            end: const Offset(1, 1),
                            duration: const Duration(seconds: 3),
                            curve: Curves.easeInOut)),
                    IconButton(
                      onPressed: () {
                        // open github
                        _launchUrl('https://github.com/mzansi45');
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.grey,
                        //size: MediaQuery.of(context).size.width * 0.018,
                        size: 25,
                      ).animate().scale(
                          begin: const Offset(0, 0),
                          end: const Offset(1, 1),
                          duration: const Duration(seconds: 3),
                          curve: Curves.easeInOut),
                    ),
                    IconButton(
                        onPressed: () {
                          // open linkedin
                          _launchUrl('https://www.linkedin.com/in/mzansi45/');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue[700],
                          //size: MediaQuery.of(context).size.width * 0.018,
                          size: 25,
                        ).animate().scale(
                            begin: const Offset(0, 0),
                            end: const Offset(1, 1),
                            duration: const Duration(seconds: 3),
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
                          //size: MediaQuery.of(context).size.width * 0.018,
                          size: 25,
                        ).animate().scale(
                            begin: const Offset(0, 0),
                            end: const Offset(1, 1),
                            duration: const Duration(seconds: 3),
                            curve: Curves.easeInOut)),
                  ],
                ),
              ]),
            ),
          )
        ]),
      );
    }

    return Scaffold(
      body: Center(
        child: SizedBox(
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
                  //fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiary),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            //Sub heading text
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05),
              child: const Text(
                  'I am always open to discuss new projects, creative ideas or opportunities to be part of your visions. Feel free to contact me.',
                  style: TextStyle(
                      //fontSize: MediaQuery.of(context).size.width * 0.015,
                      fontSize: 22,
                      color: Colors.white)),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.01),

            // Contact form
            Row(
              children: [
                const Spacer(),

                // send message form
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  //height: MediaQuery.of(context).size.height * 0.5,
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.6),
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
                                //fontSize: MediaQuery.of(context).size.width * 0.012,
                                fontSize: 20,
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
                                  const BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            label: const Text("Enter name",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontSize:MediaQuery.of(context).size.width *  0.01
                                    fontSize: 18)),
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
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                            ),
                            label: Text("Enter email",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontSize:MediaQuery.of(context).size.width *0.01
                                    fontSize: 18)),
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
                                  const BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            label: const Text("Message",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontSize:MediaQuery.of(context).size.width *0.01
                                    fontSize: 18)),
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
                  //height: MediaQuery.of(context).size.height * 0.5,
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.6),
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
                                //fontSize:MediaQuery.of(context).size.width * 0.012,
                                fontSize: 22,
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
                        leading: const Icon(Icons.location_on_outlined,
                            //size: MediaQuery.of(context).size.width * 0.015,
                            size: 20,
                            color: Color.fromARGB(255, 4, 143, 223)),
                      ),

                      // Phone
                      ListTile(
                        title: Text("Phone",
                            style: TextStyle(
                                //fontSize: MediaQuery.of(context).size.width * 0.012,
                                fontSize: 22,
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
                        leading: const Icon(Icons.phone_outlined,
                            //size: MediaQuery.of(context).size.width * 0.015,
                            size: 20,
                            color: Color.fromARGB(255, 4, 143, 223)),
                      ),

                      // Email
                      // Phone
                      ListTile(
                        title: Text("Email",
                            style: TextStyle(
                                //fontSize: MediaQuery.of(context).size.width * 0.012,
                                fontSize: 22,
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
                        leading: const Icon(Icons.mail_outline,
                            //size: MediaQuery.of(context).size.width * 0.015,
                            size: 20,
                            color: Color.fromARGB(255, 4, 143, 223)),
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
                              icon: const FaIcon(
                                FontAwesomeIcons.xTwitter,
                                color: Colors.grey,
                                //size: MediaQuery.of(context).size.width * 0.018,
                                size: 25,
                              ).animate().scale(
                                  begin: const Offset(0, 0),
                                  end: const Offset(1, 1),
                                  duration: const Duration(seconds: 3),
                                  curve: Curves.easeInOut)),
                          IconButton(
                            onPressed: () {
                              // open github
                              _launchUrl('https://github.com/mzansi45');
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.github,
                              color: Colors.grey,
                              //size: MediaQuery.of(context).size.width * 0.018,
                              size: 25,
                            ).animate().scale(
                                begin: const Offset(0, 0),
                                end: const Offset(1, 1),
                                duration: const Duration(seconds: 3),
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
                                //size: MediaQuery.of(context).size.width * 0.018,
                                size: 25,
                              ).animate().scale(
                                  begin: const Offset(0, 0),
                                  end: const Offset(1, 1),
                                  duration: const Duration(seconds: 3),
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
                                //size: MediaQuery.of(context).size.width * 0.018,
                                size: 25,
                              ).animate().scale(
                                  begin: const Offset(0, 0),
                                  end: const Offset(1, 1),
                                  duration: const Duration(seconds: 3),
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
