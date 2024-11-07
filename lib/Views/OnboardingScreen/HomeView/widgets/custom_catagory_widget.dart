import 'package:e_learing_ui_app/Views/CourseDetailsScreen/course_details.dart';
import 'package:flutter/material.dart';

class CustomCatagoryWidget extends StatelessWidget {
  final String catagoryName;
  final String icon;
  final String totalCourses;
  const CustomCatagoryWidget(
      {super.key,
      required this.catagoryName,
      required this.icon,
      required this.totalCourses});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CourseDetails(
              courseName: catagoryName,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 7,
                  spreadRadius: .4,
                  color: Colors.black.withOpacity(.1))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Image.network(
                  icon,
                  width: 150,
                  height: 150,
                ),
              ),
              Text(
                catagoryName,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Text("$totalCourses  Courses!!!"),
            ],
          ),
        ),
      ),
    );
  }
}
