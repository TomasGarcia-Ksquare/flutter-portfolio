import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/models/tech_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.purple;
Color kGradient2 = Colors.pinkAccent;
Color ksquareColor = const Color.fromARGB(255, 30, 51, 108);
Color ksquareColor2 = const Color.fromARGB(255, 97, 150, 161);

String imagePath = "images/tomas.png";

//String data to modify
String name = "Tomás García López";
String usernameItk = "TomasGarcia-Ksquare";

//Link to resume on Google Drive
String resumeLink =
    "https://docs.google.com/document/d/1JUI8IwQ8CxiyphYpauCdWKEPzzxvbS9XNJ4ZWqcfoMg/edit?usp=sharing";

//Contact Email
String contactEmail = "tommygl2112@gmail.com";

String aboutWorkExperience = '''
Over the time, I have acquired skills in software development, and have successfully applied them in both individual and team projects. I'm proud to have worked on notable projects such as "Synkron Mobile" for The Ksquare Group, which have allowed me to continue improving my skills and knowledge in Flutter. I love to continue learning and improving in software development, and I am confident that I can apply my experience and knowledge to help your company achieve its goals.
''';

String aboutMeSummary = '''
Hello! I'm Tomás García López, a Information Technology Management Engineer.

In this web portfolio, you will find some examples of my previous work, which illustrate my experience and skills in mobile development with Flutter. I hope you find my work interesting and helpful, and if you are interested in working with me, please do not hesitate to get in touch!
''';

String location = "Yucatán, México";
String website = "N/A";
String portfolio = "https://github.com/TomasGarcia-Ksquare";
String portfolio2 = "https://github.com/PibiDev/";
String email = "tommygl2112@gmail.com";

List<Project> projectList = [
  Project(
    name: 'Listing TV Series App',
    description:
        'This project was developed by the flutter juniors with the objective to implement an application for listing TV series for mobile devices.',
    link: 'https://github.com/TomasGarcia-Ksquare/tv_series_project',
    tech: [
      Tech(name: 'Flutter', image: 'images/flutter.png'),
      Tech(name: 'Dart', image: 'images/dart.png'),
      Tech(name: 'Provider Package'),
    ],
    docLink:
        'https://luck-jeep-daa.notion.site/Listing-TV-Series-App-Documentation-9177b39dd30b4ff4a1f10a39c6e4fd72',
  ),
  Project(
    name: 'E-Commerce App',
    description:
        'Mobile application for classified ads, allowing users to create and browse ads for selling products. The app includes features such as user registration, ad creation, editing, and deletion, also filtering capabilities.',
    link:
        'https://github.com/TomasGarcia-Ksquare/Project_ClassifiedApp/tree/http',
    tech: [
      Tech(name: 'Flutter', image: 'images/flutter.png'),
      Tech(name: 'Dart', image: 'images/dart.png'),
    ],
  ),
  Project(
    name: 'Balance App',
    description:
        'Mobile application for personal finance management. The application allows users to record transactions such as income and expenses, and the application will display the current balance for each account. The application uses an architecture based on the Provider pattern of Flutter to handle the application state and data management. ',
    link: 'https://github.com/TomasGarcia-Ksquare/balance_provider',
    tech: [
      Tech(name: 'Flutter', image: 'images/flutter.png'),
      Tech(name: 'Dart', image: 'images/dart.png'),
      Tech(name: 'Provider Package')
    ],
  ),
  Project(
    name: 'App UI Desing Practice',
    description:
        'This is a repository that contains a set of user interface (UI) designs for practice. ',
    link: 'https://github.com/TomasGarcia-Ksquare/ui_desing_practice',
    tech: [
      Tech(name: 'Flutter', image: 'images/flutter.png'),
      Tech(name: 'Dart', image: 'images/dart.png'),
    ],
  ),
  Project(
    name: 'Simon Says Game',
    description:
        'This project is a Simon game, the game follows the same mechanics as the original Simon game, where a sequence of colors and sounds is presented and the player must repeat it. In this project, JavaScript is used to create the game logic, HTML for the page structure, and CSS for the visual style of the game.',
    link: 'https://github.com/TomasGarcia-Ksquare/project1_simon',
    tech: [
      Tech(name: 'JavaScript', image: 'images/js.png'),
      Tech(name: 'HTML', image: 'images/html.png'),
      Tech(name: 'CSS', image: 'images/css.png'),
    ],
  ),
  Project(
    name: 'The Game of Life',
    description:
        'This is an implementation of Conways Game of Life, a cellular automaton created by the British mathematician John Horton Conway in 1970. The goal of the game is to simulate the evolution of cells on a grid, which can be alive or dead, following a set of simple rules.',
    link: 'https://github.com/TomasGarcia-Ksquare/project2_conway',
    tech: [
      Tech(name: 'JavaScript', image: 'images/js.png'),
      Tech(name: 'HTML', image: 'images/html.png'),
      Tech(name: 'CSS', image: 'images/css.png'),
    ],
  ),
];
