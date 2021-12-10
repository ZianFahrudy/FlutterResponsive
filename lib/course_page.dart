import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveflutter/course_data.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Course.course;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        centerTitle: false,
        title: const Text('LearnApp'),
        leading: ResponsiveVisibility(
          hiddenWhen: const [Condition.largerThan(name: TABLET)],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: TABLET)],
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Course',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: TABLET)],
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://miro.medium.com/max/1400/0*mqtaZBdbJvp2H6mZ.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text('About Course',
                  style: TextStyle(
                      fontSize: ResponsiveValue(context,
                          defaultValue: 60.0,
                          valueWhen: [
                        const Condition.smallerThan(name: MOBILE, value: 40),
                        const Condition.largerThan(name: TABLET, value: 120)
                      ]).value)),
            ),
          ),
          // Image.network(
          //   'https://miro.medium.com/max/1400/0*mqtaZBdbJvp2H6mZ.jpg',
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          // ),
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowPadding: const EdgeInsets.all(30),
            columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: List.generate(
              courses.length,
              (index) => ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                      right:
                          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                              ? 0
                              : 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        courses[index].image,
                        height: 250,
                        width: 350,
                        fit: BoxFit.cover,
                      ),
                      Text(courses[index].title),
                      Text(courses[index].description),
                      
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
