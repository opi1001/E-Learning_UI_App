import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:e_learing_ui_app/Views/OnboardingScreen/HomeView/widgets/app_bar.dart';
import 'package:e_learing_ui_app/Views/OnboardingScreen/HomeView/widgets/custom_catagory_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    List<Map> catagories = [
      {
        'icon':
            "https://media.istockphoto.com/id/1311107708/photo/focused-cute-stylish-african-american-female-student-with-afro-dreadlocks-studying-remotely.jpg?s=612x612&w=0&k=20&c=OwxBza5YzLWkE_2abTKqLLW4hwhmM2PW9BotzOMMS5w=",
        'name': "Accounting",
        'total_course': 100,
      },
      {
        'icon':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo_m9UYTUHJORLiAiTZvQai0W-iR4-KzkIfQ&s",
        'name': "Photography",
        'total_course': 40,
      },
      {
        'icon':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVbijP7dwWLga-ZbxS14bre2RRvriPLaCsrw&s",
        'name': "Design",
        'total_course': 320,
      },
      {
        'icon':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwX4Ot12inmHrNAO-yy0D5gcRO0NpXX_uCew&s",
        'name': "Marketing",
        'total_course': 230,
      },
    ];

    return Scaffold(
        body: Column(
      children: [
        homeappbar(size),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore Catagories',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: .9,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        final data = catagories[index];
                        return CustomCatagoryWidget(
                            catagoryName: data["name"],
                            icon: data["icon"],
                            totalCourses: data['total_course'].toString());
                      }),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
