import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:profile/pages/contact.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  final Map<String, dynamic> services = {
    "Web Development": {
      "description":
          "Custom website development tailored to your business needs",
      "features":
          "Responsive design, SEO optimization, User-friendly interface",
      "technologies": "HTML, CSS, JavaScript, Flutter, Spring Boot, Java",
    },
    "App Development": {
      "description":
          "Build native or cross-platform mobile apps for iOS and Android",
      "features": "Intuitive UI/UX, Push notifications, Offline functionality",
      "technologies": "Flutter, React Native, Swift, Kotlin, Xamarin",
    },
    "Server Development": {
      "description":
          "Develop robust server-side applications to support your business logic",
      "features": "RESTful APIs, Authentication, Database integration",
      "technologies": "Spring Boot, Node.js, Django, Flask, Express.js",
    },
    "Database Related Applications": {
      "description":
          "Create database-driven applications for data management and analysis",
      "features": "Data modeling, CRUD operations, Data visualization",
      "technologies": "SQL, NoSQL, MySQL, Firebase",
    },
    "Software Maintenance": {
      "description":
          "Ensure your existing software stays up-to-date and runs smoothly",
      "services": "Bug fixes, Feature enhancements, Version upgrades",
      "technologies": "Depends on the existing software stack",
    },
    "Consulting": {
      "description":
          "Provide expert advice and guidance on software development",
      "services":
          "Technical consultation, Project planning, Architecture design",
      "technologies": "Tailored to client requirements",
    },
    "Custom Solutions": {
      "description":
          "Develop custom software solutions tailored to your business needs",
      "services": "Requirement analysis, Solution design, Implementation",
      "technologies": "Customized based on project needs",
    }
  };
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            'assets/images/bg.png',
            opacity: const AlwaysStoppedAnimation(0.2),
            fit: BoxFit.cover,
          ),
        ),
        ListView(
          children: [
            //What i can do for you
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(50),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'What I can do for you',
                                  style: TextStyle(
                                      fontSize: 80,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'I offer a wide range of software development services to help you achieve your business goals.',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/images/software.png',
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.4),
                      ],
                    ),
                  ),
                  Wrap(children: [
                    for (int x = 0; x < services.length; x++)
                      Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(8, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Title
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    child: Text(services.keys.elementAt(x),
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary))),

                                //Description
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    child: Text(
                                      '    \u2022  ${services.values.elementAt(x)['description']}',
                                      style: const TextStyle(fontSize: 17),
                                    )),

                                //Features
                                if (services.values.elementAt(x)['features'] !=
                                    null)
                                  Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Text(
                                          '    \u2022  Features:  ${services.values.elementAt(x)['features']}',
                                          style:
                                              const TextStyle(fontSize: 17))),

                                //Services
                                if (services.values.elementAt(x)['services'] !=
                                    null)
                                  Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Text(
                                          '    \u2022  Services:  ${services.values.elementAt(x)['services']}',
                                          style:
                                              const TextStyle(fontSize: 17))),

                                //Technologies
                                Container(
                                    margin: const EdgeInsets.all(10),
                                    child: Text(
                                        '    \u2022  Technologies:  ${services.values.elementAt(x)['technologies']}',
                                        style: const TextStyle(fontSize: 17))),
                              ])),

                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8),

                    //Contact me
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Contact(),
                            ));
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.all(10),
                          child: const Center(
                            child: Text(
                              'Contact Me',
                              style: TextStyle(fontSize: 20),
                            ),
                          )),
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/**
 * Website Development:
Description: Custom website development tailored to your business needs.
Features: Responsive design, SEO optimization, User-friendly interface.
Technologies: HTML, CSS, JavaScript, React, Angular, Vue.js, etc.
Mobile Application Development:
Description: Build native or cross-platform mobile apps for iOS and Android.
Features: Intuitive UI/UX, Push notifications, Offline functionality.
Technologies: Flutter, React Native, Swift, Kotlin, Xamarin, etc.
Server Application Development:
Description: Develop robust server-side applications to support your business logic.
Features: RESTful APIs, Authentication, Database integration.
Technologies: Spring Boot, Node.js, Django, Flask, Express.js, etc.
Database Related Applications:
Description: Create database-driven applications for data management and analysis.
Features: Data modeling, CRUD operations, Data visualization.
Technologies: SQL, NoSQL, MongoDB, MySQL, PostgreSQL, Firebase, etc.
Software Updates & Maintenance:
Description: Ensure your existing software stays up-to-date and runs smoothly.
Services: Bug fixes, Feature enhancements, Version upgrades.
Technologies: Depends on the existing software stack.
Consulting Services:
Description: Expert guidance and advice on technology and software solutions.
Services: Technical consultation, Project planning, Architecture design.
Technologies: Tailored to client requirements.
Custom Solutions:
Description: Provide tailor-made solutions to address specific business challenges.
Services: Requirement analysis, Solution design, Implementation.
Technologies: Customized based on project needs.
 */