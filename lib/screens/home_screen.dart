import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:dribbox_ui/constants/colors.dart';
import 'package:dribbox_ui/constants/images.dart';
import 'package:dribbox_ui/constants/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.navy,
        onPressed: () {},
        child: const Icon(Icons.sd_card),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    Strings.boxDrop,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Image.asset(Images.storage),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                //TODO: Make this container TextBox
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        Strings.search,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        Strings.recent,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(Images.grid),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Box(
                    backgroundColor: AppColors.lightYellow,
                    dotColor: AppColors.darkYellow,
                    folderImage: Images.android,
                    folderName: Strings.android,
                  ),
                  Box(
                    backgroundColor: AppColors.yellow,
                    dotColor: AppColors.orange,
                    folderImage: Images.logo,
                    folderName: Strings.logo,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Box(
                    backgroundColor: AppColors.lightBlue,
                    dotColor: AppColors.grey,
                    folderImage: Images.design,
                    folderName: Strings.design,
                  ),
                  Box(
                    backgroundColor: AppColors.lightGreen,
                    dotColor: AppColors.cyan,
                    folderImage: Images.games,
                    folderName: Strings.games,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Box(
                    backgroundColor: AppColors.dullYellow,
                    dotColor: AppColors.cobalt,
                    folderImage: Images.work,
                    folderName: Strings.work,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color backgroundColor;
  final Color dotColor;
  final String folderName;
  final String folderImage;

  const Box({
    Key? key,
    required this.backgroundColor,
    required this.dotColor,
    required this.folderName,
    required this.folderImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 107,
      width: 148,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(folderImage),
                Icon(
                  Icons.more_vert,
                  color: dotColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              folderName,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
