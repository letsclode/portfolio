import 'package:url_launcher/url_launcher.dart';

class Method {
  launchMyURL(String link) async {
    var url = link;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:09759059373";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunchUrl(Uri.parse("mailto:cloderaldo@gmail.com"))) {
      await launchUrl(Uri.parse("mailto:cloderaldo@gmail.com"));
    } else {
      throw 'Could not launch';
    }
  }
}
