import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //What i can do for you
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 100),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What I can do for you',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'I offer a wide range of software development services to help you achieve your business goals.',
                            style: TextStyle(fontSize: 20),
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
              Wrap(children: [
                for (int x = 0; x < 10; x++)
                  Container(
                    height: 200,
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
                  )
              ]),
            ],
          ),
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