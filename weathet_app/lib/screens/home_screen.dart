import 'package:flutter/material.dart';
import 'package:weathet_app/global/global.dart';
import 'package:weathet_app/widgets/cards.dart';
import 'package:weathet_app/widgets/search.dart';
import 'package:weathet_app/widgets/title_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 230, 205, 205),
        body: Column(children: [
          const TitleHome(),
          const Search(),
          isLoading
              ? const CircularProgressIndicator()
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: citiesList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CardsWeather(city: citiesList[index]);
                      }),
                ),
        ]),
      ),
    );
  }
}
