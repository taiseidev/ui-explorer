import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            pinned: true,
            floating: true,
            expandedHeight: 110,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'すぐに配達',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff888988),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '東京スカイツリー',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3d3d3d),
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Uber Eats を検索',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4d4d4d),
                      ),
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: const Color(0xfff3f2f2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
