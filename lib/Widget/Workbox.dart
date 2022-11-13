import 'package:flutter/material.dart';

import 'work_custom_data.dart';

class WorkBox extends StatelessWidget {
  const WorkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        WorkCustomData(
          title: "Qonvex Information Technology",
          subTitle:
              "As a flutter developer I am the one who Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase",
          duration: "December 2019",
        ),
        WorkCustomData(
          title:
              "OJT @ Bureau of Customs | Department of Finance: Bureau of Customs",
          subTitle:
              "The Bureau of Customs (abbreviated BoC or BOC; Filipino: Kawanihan ng Adwana) is a Philippine government agency under the Department of Finance",
          duration: "April - 2018",
        ),
      ],
    );
  }
}
