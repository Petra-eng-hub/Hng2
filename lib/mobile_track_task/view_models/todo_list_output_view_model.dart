import 'package:url_launcher/url_launcher.dart';

class ToDoListOutputModel {
  launchUrl() async {
    const url = 'https://internship.zuri.team/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Cant launch $url';
    }
  }
}
