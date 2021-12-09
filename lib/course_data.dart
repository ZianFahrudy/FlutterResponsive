class Course {

  static final course = [
    Course(
      title: 'Beginners',
      image: 'https://i.ytimg.com/vi/KRmgYlgOjPQ/maxresdefault.jpg',
      description: 'Beginner course focused on dart',
      time: '23 H 25 M'
    ),
     Course(
      title: 'Advanceds',
      image: 'https://tetacourse.com/uploads/posts/2020-04/1586614150_flutter-dart-the-complete-flutter-app-development-course.jpg',
      description: 'Create Beatiful User interfaces',
      time: '14 H 30 M'
    ),
  ];


  Course(
      {required this.title,
      required this.image,
      required this.time,
      required this.description});
  final String title;
  final String image;
  final String time;
  final String description;
}
