import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  Project projectData;

  ProjectWidget({
    Key? key,
    required this.projectData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.build,
                  color: kGrey,
                  size: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  projectData.name,
                  //style: kSectionTitleText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              projectData.description,
            ),
          ),
          const Spacer(),
          const Divider(),
          projectData.tech != null
              ? SizedBox(
                  height: 20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: projectData.tech?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            projectData.tech![index].image != null
                                ? Image.asset(
                                    projectData.tech![index].image!,
                                    fit: BoxFit.contain,
                                    height: 16,
                                  )
                                : const SizedBox(),
                            Text(projectData.tech![index].name),
                          ],
                        ),
                      );
                    },
                  ),
                )
              : const SizedBox(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    //Launch project on GitHub
                    final Uri _url = Uri.parse(projectData.link);
                    await launchUrl(_url);
                  },
                  child: Text(
                    "View Project",
                    style: TextStyle(color: Colors.white),
                    //style: kSubTitleText.copyWith(color: Colors.white),
                  ),
                ),
              ),
              projectData.docLink != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          //Launch project on GitHub
                          final Uri _url = Uri.parse(projectData.docLink!);
                          await launchUrl(_url);
                        },
                        child: Text(
                          "Documentation",
                          style: TextStyle(color: Colors.white),
                          //style: kSubTitleText.copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ]),
      ),
    );
  }
}
