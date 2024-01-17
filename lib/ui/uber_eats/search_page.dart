import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../gen/assets.gen.dart';

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
              preferredSize: const Size.fromHeight(60),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
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
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 16),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Category(
                    title: 'レストラン',
                    icon: Image.asset(
                      Assets.ui.uberEats.png.cameraDynamicColor.path,
                      width: 50,
                    ),
                    onTap: () {},
                  ),
                  _Category(
                    title: '食品・生鮮食品',
                    icon: Image.asset(
                      Assets.ui.uberEats.png.headphoneDynamicColor.path,
                      width: 50,
                    ),
                    onTap: () {},
                  ),
                  _Category(
                    title: 'お酒',
                    icon: Image.asset(
                      Assets.ui.uberEats.png.micDynamicColor.path,
                      width: 50,
                    ),
                    onTap: () {},
                  ),
                  _Category(
                    title: 'すべて表示',
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 36,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 16),
          ),
          const SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  _Brand(
                    imagePath:
                        'https://www.ministop.co.jp/corporate/about/figure/brand_im01.gif',
                  ),
                  SizedBox(width: 16),
                  _Brand(
                    imagePath:
                        'http://www.marksign.net/wp-content/uploads/2016/04/lawson.jpg',
                  ),
                  SizedBox(width: 16),
                  _Brand(
                    imagePath:
                        'https://logo.jp/concour/wp-content/uploads/2012/04/godiva.gif',
                  ),
                  SizedBox(width: 16),
                  _Brand(
                    imagePath:
                        'http://bachohima524.xsrv.jp/wp-content/uploads/2021/06/%E3%82%B5%E3%83%B3%E3%83%89%E3%83%A9%E3%83%83%E3%82%B0%E3%80%80%E3%82%B5%E3%83%A0%E3%83%8D.png',
                  ),
                  SizedBox(width: 16),
                  _Brand(
                    imagePath:
                        'http://www.er-planning.co.jp/wp/wp-content/uploads/2020/04/costco-logo-1200x491.jpg',
                  ),
                  SizedBox(width: 16),
                  CircleAvatar(
                    backgroundColor: Color(0xfff3f2f2),
                    maxRadius: 25,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 4),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Divider(
                color: Color(0xfff3f2f2),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _ListItem(),
              ),
              childCount: 50,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        ],
      ),
    );
  }
}

class _ListItem extends HookWidget {
  const _ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isLiked = useState(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://images.unsplash.com/photo-1562050344-f7ad946cee35?q=80&w=5070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                height: 150,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                onPressed: () => isLiked.value = !isLiked.value,
                icon: Icon(
                  isLiked.value
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          '松屋 横浜西口店 Matsuya Yokohama Nishiguchi ten',
          maxLines: 1,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          '配達手数料 ¥400・20~35分',
          maxLines: 1,
          style: TextStyle(
            fontSize: 13,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'スポンサー',
          maxLines: 1,
          style: TextStyle(
            fontSize: 13,
            overflow: TextOverflow.ellipsis,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class _Brand extends StatelessWidget {
  const _Brand({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 35,
      backgroundImage: NetworkImage(imagePath),
    );
  }
}

class _Category extends StatelessWidget {
  const _Category({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          elevation: 0,
          child: Material(
            type: MaterialType.button,
            color: const Color(0xfff3f2f2),
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: 85,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: icon,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
