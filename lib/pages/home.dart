import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          const SizedBox(height: 15),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               const SizedBox(height: 15),
            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search Pankake',
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 163, 153, 150),
              fontSize: 14,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 163, 153, 150),
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: Color.fromARGB(255, 163, 153, 150),
            ),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        title: const Text(
          'Breakfast',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            print('hey');
          },
          child: Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                'icons/arrow_left_2.svg',
              )),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('yo');
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'icons/dots.svg',
                )),
          ),
        ]);
  }
}
