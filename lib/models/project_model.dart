import 'package:portfolio/models/tech_model.dart';

class Project {
  String name;
  String description;
  String link;
  List<Tech>? tech;
  String? docLink;

  Project(
      {required this.name,
      required this.description,
      required this.link,
      this.tech,
      this.docLink});
}
