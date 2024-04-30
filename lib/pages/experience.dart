import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience>
    with SingleTickerProviderStateMixin {
  //projects(name, description)
  final Map<String, dynamic> projects = {
    "Portfolio Website": {
      "description":
          "A website that showcases my skills, experience, and projects. The website is built using Flutter and hosted on GitHub Pages. The website is responsive and works on all devices. Be sure to check it out and contact me if you need a website like this.",
      "url": "https://mzansi45.github.io",
    },
    "Online Bank Queue Management System": {
      "description":
          "A Mobile application with web that allows customers to book a queue number online and get served at the bank. The system is built using HTML, CSS, JavaScript, Java, and Xamarin. The system is secure and easy to use. (This project is not live and was done by a team of 4 developers at university level)",
      "url": "",
    },
    "An advertismnet website for a team and project": {
      "description":
          "A website that advertises a team and project. The website is built using HTML, CSS, and JavaScript. The website is responsive and works on all devices. Be sure to contact me if you need a website like this.",
      "url": "https://mzansi45.github.io/QueueEase/",
    },
  };

  int currentProject = 0;

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

  int _playCount = 0;
  List<String> animationUrls = [
    'https://lottie.host/9c22447c-3aa1-4639-aede-8fd15a5ee2d6/Uj2PsbGp8l.json',
    'https://lottie.host/6bcf6972-647f-4b29-9b16-8c42d6ec7323/yiK8oYhxpJ.json',
    'https://lottie.host/1c14b839-3b7e-4905-ae64-a0602472c3d1/4Ujy7UbIw3.json',
    'https://lottie.host/8f9dc330-1306-4bba-a707-230ce4513b8c/baWuVYEcUC.json',
    //'https://lottie.host/502fd05d-c73a-48ed-b5fd-848a32e2d5dc/VDarngAn2B.json',
    //'https://lottie.host/3cd4908a-058e-426e-9492-6699580201d2/D8yabH0WRH.json',
    //'https://lottie.host/a10e0cc9-f344-458d-abb8-b9f4dfc845de/uhW12fwjKH.json',
    'https://lottie.host/da9881cb-97d0-4afb-9533-8874b0b9bfd3/lxZWXAYJGh.json',
    'https://lottie.host/fa52f77a-c804-45c8-a395-132ae064b2c9/IJ13FracX1.json',
    // Add more animation URLs as needed
  ];
  int currentIndex = 0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Adjust duration as needed
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          playNextAnimation();
        }
      });
  }

  void playNextAnimation() {
    // Check if the current animation has been played 3 times
    if (_playCount < 2) {
      // Play the current animation again
      setState(() {
        _controller
            .reset(); // Reset the controller before playing the animation
        _controller.forward(); // Start playing the animation
        _playCount++; // Increment the play count
      });
    } else {
      // Move to the next animation if the current animation has been played 3 times
      _playCount = 0; // Reset the play count for the next animation
      if (currentIndex < animationUrls.length - 1) {
        // Play the next animation if there are more animations in the list
        setState(() {
          currentIndex++;
          _controller
              .reset(); // Reset the controller before playing the next animation
          _controller.forward(); // Start playing the next animation
        });
      } else {
        // Start over from the beginning if the last animation ends
        setState(() {
          currentIndex = 0;
          _controller.reset(); // Reset the controller
          _controller.forward(); // Start playing the first animation
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
        child: ListView(children: [
          // TimelineTile for the matriculation
          TimelineTile(
            isFirst: true,
            alignment: TimelineAlign.manual,
            lineXY: 0.45,
            indicatorStyle: const IndicatorStyle(
              width: 30,
              height: 30,
              indicator: Icon(
                FontAwesomeIcons.bookOpen,
                color: Colors.white,
              ),
            ),
            afterLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            beforeLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            startChild: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(8),
              child: const Center(
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Qualification 1',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 10),
                        Text('Matri Certificate', textAlign: TextAlign.end),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            endChild: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('2018'),
            ),
          ),
          TimelineDivider(
            begin: 0.45,
            end: 0.55,
            thickness: 2,
            color: Theme.of(context).colorScheme.tertiary,
          ),

          // TimelineTile for the first qualification
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.55,
            indicatorStyle: const IndicatorStyle(
              width: 30,
              height: 30,
              indicator: Icon(
                FontAwesomeIcons.graduationCap,
                color: Colors.white,
              ),
            ),
            afterLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            beforeLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            startChild: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('2023', textAlign: TextAlign.end),
            ),
            endChild: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Qualification 2',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        const SizedBox(height: 10),
                        const Text('University of Johannesburg',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18)),
                        const SizedBox(height: 5),

                        // Qualification: BSc in Info Tech in Com Sc&Informatics
                        RichText(
                          text: TextSpan(
                            text: 'Qualification: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                            children: const [
                              TextSpan(
                                text: 'BSc in Info Tech in Com Sc&Informatics',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),

                        // RichText for the qualification type
                        RichText(
                          text: TextSpan(
                            text: 'Qualification Type: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                            children: const <TextSpan>[
                              TextSpan(
                                text: "Bachelor's Degree (360 - NQF level 7)",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
          TimelineDivider(
            begin: 0.45,
            end: 0.55,
            thickness: 2,
            color: Theme.of(context).colorScheme.tertiary,
          ),

          // TimelineTile for work experience
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.45,
            indicatorStyle: const IndicatorStyle(
              width: 30,
              height: 30,
              indicator: Icon(
                Icons.work,
                color: Colors.white,
              ),
            ),
            afterLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            beforeLineStyle: LineStyle(
              thickness: 2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            startChild: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Row(
                  children: [
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Work Experience',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        const SizedBox(height: 10),
                        // Title: Software Developer
                        const Text('Software Developer',
                            textAlign: TextAlign.end),
                        const SizedBox(height: 5),

                        //rich text for the Company: Company Name
                        RichText(
                          text: TextSpan(
                            text: 'Company: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Simulated Training Solutions (STS3D)',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            endChild: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('2024'),
            ),
          ),

          const SizedBox(height: 30),
          //Projects
          const Text('Projects',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          //https://lottie.host/9c22447c-3aa1-4639-aede-8fd15a5ee2d6/Uj2PsbGp8l.json

          Row(children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              //child: Lottie.network('https://lottie.host/9c22447c-3aa1-4639-aede-8fd15a5ee2d6/Uj2PsbGp8l.json',),
              child: Lottie.network(
                animationUrls[currentIndex],
                controller: _controller,
                onLoaded: (composition) {
                  _controller
                    ..duration = composition.duration
                    ..forward();
                },
              ),
            ),

            //segmented control (prev, Name of current project, next)
            Container(
              width: MediaQuery.of(context).size.width * 0.54,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(
                            () {
                              currentProject--;
                              if (currentProject < 0) {
                                currentProject = projects.length - 1;
                              }
                            },
                          );
                        },
                        style: ButtonStyle(
                            // corner radius top left and bottom left
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  side: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary)),
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                MediaQuery.sizeOf(context).width * 0.13,
                                MediaQuery.sizeOf(context).height * 0.0015))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.062,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.tertiary,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Tooltip(
                              message: 'The name of the project',
                              child: Text(
                                projects.keys.elementAt(currentProject),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              )),
                        ),
                      ).animate().scale(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                            begin: Offset.zero,
                            end: const Offset(1, 1),
                          ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          setState(
                            () {
                              currentProject++;
                              if (currentProject >= projects.length) {
                                currentProject = 0;
                              }
                            },
                          );
                        },
                        style: ButtonStyle(
                            // corner radius top right and bottom right
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.tertiary),
                              ),
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                                MediaQuery.sizeOf(context).width * 0.13,
                                MediaQuery.sizeOf(context).height * 0.0015))),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      projects.values.elementAt(currentProject)["description"],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (projects.values.elementAt(currentProject)["url"] !=
                          "") {
                        // Open the project URL in a web browser
                        //_launch(projects.values.elementAt(currentProject)["url"]);
                        _launchUrl(
                            projects.values.elementAt(currentProject)["url"]);
                      } else {
                        // Show a dialog box if the project URL is not available
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Project URL not available'),
                              content: Lottie.network(
                                'https://lottie.host/5fad98dd-bc47-4288-8d86-9926066b3caf/BOTXNImJGK.json',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Close'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text('View Project'),
                  ),
                ],
              ),
            )

            /*Container(
              margin: const EdgeInsets.all(20),
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Lottie.network(
                'https://lottie.host/6bcf6972-647f-4b29-9b16-8c42d6ec7323/yiK8oYhxpJ.json',
              ),
            ),*/
          ]),
        ]),
      ),
    );
  }
}
