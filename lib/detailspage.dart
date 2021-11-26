import 'package:flutter/material.dart';
import 'package:one/colors.dart';
import 'package:one/data.dart';

class DetailsPage extends StatelessWidget {
  final Films? films;
  const DetailsPage({Key? key, this.films}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(films!.position),
                      const SizedBox(height: 30),
                      Text(
                        films!.name!,
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        films!.director!,
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        films!.description!,
                        style: TextStyle(
                            color: contentTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        color: Colors.black38,
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, ind) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(films!.images![ind]),
                              );
                            },
                            itemCount: films!.images!.length),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
