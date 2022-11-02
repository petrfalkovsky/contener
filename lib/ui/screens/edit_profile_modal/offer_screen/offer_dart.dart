import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/style/colors.dart' as style_colors;

import '../../../../widgets/footer.dart';
import '../../../../widgets/header.dart';
import '/style/colors.dart' as colors;

import '/style/fonts.dart' as font_styles;

class OfferScreen extends StatelessWidget {
  const OfferScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: style_colors.gray03,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const HeaderWidget(),
                  const SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/icons/back-arrow.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text('back to business', style: font_styles.appBar),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    width: 63,
                                    height: 63,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/early-logo.png',
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('EarlyBird',
                                          style: font_styles.headlineMedium2),
                                      Text('Coffeeshop',
                                          style: font_styles.headlineMedium3),
                                    ],
                                  )
                                ]),
                                const SizedBox(height: 17),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/locate.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 12.5),
                                    Text('Dubai, Abu-Dabi',
                                        style: font_styles.titleH4),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/paper-clip.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 12.5),
                                    Text('Brandbook',
                                        style: font_styles.titleH4),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Text(
                                    'A two-storey structure with cosy minimalist interiors and a pet-friendly terrace, LDC EarlyBird takes up a prime spot at Jumeirah Lakes Towers. The cafe-meets-bistro is a welcome addition for breakfast enthusiasts, coffee lovers and ice cream aficionados, with a menu packed with fresh selections. You’ll find everything from nutritious and naughty breakfast items to pizza, pasta, sandwiches, desserts and more. Pair these with an array of beverages, from iced or hot brews to detox juices.',
                                    style: font_styles.bodySuperSmall2),
                              ],
                            )),
                        const SizedBox(height: 15),
                        const TabBar(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FooterWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  List iconitems = [
    'assets/icons/camera.png',
    'assets/icons/picture.png',
    'assets/icons/semi-rectangle.png',
    'assets/icons/back-arrow.png',
    'assets/icons/back-arrow.png',
    'assets/icons/back-arrow.png',
    'assets/icons/back-arrow.png',
    'assets/icons/back-arrow.png',
  ];

  List items = [
    "All",
    "Video",
    "Photo",
    "Post",
    "Else",
    "Else",
    "Else",
    "Else",
  ];

  /// List of body content
  List<IconData> contenTab = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
    Icons.local_activity,
    Icons.settings,
    Icons.person
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: colors.gray03,
        ),
        child: Column(
          children: [
            /// CUSTOM TABBAR
            SizedBox(
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? colors.gray02
                                  : Colors.transparent,
                              borderRadius: current == index
                                  ? const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )
                                  : BorderRadius.circular(0),

                              // border: current == index
                              //     ? Border.all(
                              //         color: Colors.transparent, width: 0)
                              //     : null,
                            ),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 15),
                                      Image.asset(iconitems[index],
                                          height: 20,
                                          width: 20,
                                          color: current == index
                                              ? colors.blue
                                              : colors.gray01),
                                      const SizedBox(width: 11.25),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          items[index],
                                          style: GoogleFonts.laila(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: current == index
                                                  ? colors.blue
                                                  : colors.gray01),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  child: Visibility(
                                    visible: current == index,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 2,
                                      decoration: const BoxDecoration(
                                          color: Colors.deepPurpleAccent,
                                          shape: BoxShape.rectangle),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              decoration: const BoxDecoration(
                  // color: Colors.deepPurpleAccent,
                  // shape: BoxShape.circle,
                  ),

              // margin: const EdgeInsets.only(top: 30),
              // width: double.infinity,
              // height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    contenTab[current],
                    size: 200,
                    // color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[current],
                    // style: GoogleFonts.laila(
                    //     fontWeight: FontWeight.w500,
                    //     fontSize: 30,
                    //     color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
