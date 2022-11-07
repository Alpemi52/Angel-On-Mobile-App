import 'package:angle_on/class/movie_card.dart';
import 'package:angle_on/components/movie_card_design.dart';
import 'package:angle_on/constants/app_constants.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  State<DiscoverPage> createState() => _HomePageState();
}

class _HomePageState extends State<DiscoverPage> {
  List <bool> _selected = [false,true,true];
  @override
  List<MovieCard> cards = [
    MovieCard(movieImage: "assets/interstellar.png"),
    MovieCard(movieImage: "assets/seven.png"),
    MovieCard(movieImage: "assets/contact.png"),
    MovieCard(movieImage: "assets/fight_club.png"),
    MovieCard(movieImage: "assets/whiplash.png"),
    MovieCard(movieImage: "assets/before_sunrise.png"),
    MovieCard(movieImage: "assets/recepivedik1.png"),
    MovieCard(movieImage: "assets/recepivedik2.png"),
    MovieCard(movieImage: "assets/recepivedik3.png"),
    MovieCard(movieImage: "assets/recepivedik4.png"),
    MovieCard(movieImage: "assets/recepivedik5.png"),
    MovieCard(movieImage: "assets/recepivedik6.png"),
    MovieCard(movieImage: "assets/inception.png"),
  ];
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
            elevation: 0,
            centerTitle: true,
            //AppBar title
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Disc",
                    style: TextStyle(
                        color: AppConstants.secondAngleOnColor,
                        fontWeight: FontWeight.bold,
                    )
                ),
                Text(
                    "o",
                    style: TextStyle(
                      color: AppConstants.secondAngleOnColor,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(color: AppConstants.secondAngleOnColor,blurRadius: 30,)
                      ]
                    )
                ),
                Text(
                    "ver",
                    style: TextStyle(
                      color: AppConstants.secondAngleOnColor,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
        ),
        //Search
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,top: 8,bottom: 8),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppConstants.thirdAngleOnColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: TextField(
                    style: TextStyle(color: AppConstants.secondAngleOnColor),
                    cursorColor: AppConstants.secondAngleOnColor,
                    decoration: InputDecoration(
                      hintText: "Title, Director, or Celeb",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 77, 77, 93),fontWeight: FontWeight.bold),
                      prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 77, 77, 93),),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 16),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: AppConstants.primaryAngleOnColor,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black38,width: 0.3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      spreadRadius: 0.5,
                      offset: Offset(0, 3)
                    )
                  ]
                ),
                child: IconButton(
                  splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: (){},
                    icon: Icon(Icons.tune,color: Colors.white,)
                ),
              ),
            )
          ],
        ),
        //types
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:16),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = false;
                        _selected[1] = true;
                        _selected[2] = true;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppConstants.thirdAngleOnColor,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(4))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.slideshow,
                              color: _selected[0]
                                  ? Color.fromARGB(255, 77, 77, 93)
                                  : AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[0]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                              "Movies",
                              style: TextStyle(
                                  color:
                                  _selected[0]
                                      ? Color.fromARGB(255, 77, 77, 93)
                                      : Colors.white,
                                fontWeight: FontWeight.bold
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = true;
                        _selected[1] = false;
                        _selected[2] = true;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppConstants.thirdAngleOnColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.theater_comedy,
                            color:
                                _selected[1]
                                    ? Color.fromARGB(255, 77, 77, 93)
                                    :AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[1]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Series",
                            style: TextStyle(
                                color: _selected[1]
                                    ?Color.fromARGB(255, 77, 77, 93)
                                    : Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selected[0] = true;
                        _selected[1] = true;
                        _selected[2] = false;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 50,
                      decoration: BoxDecoration(
                          color: AppConstants.thirdAngleOnColor,
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(4))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mic_none_rounded,
                            color: _selected[2]
                                ? Color.fromARGB(255, 77, 77, 93)
                                : AppConstants.secondAngleOnColor,
                            shadows: [
                              _selected[2]
                                  ? Shadow()
                                  : Shadow(
                                  color: AppConstants.secondAngleOnColor,
                                  blurRadius: 20)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Podcasts",
                            style: TextStyle(
                                color:
                                _selected[2]
                                    ? Color.fromARGB(255, 77, 77, 93)
                                    : Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 9/12,
                crossAxisCount: 2,
                mainAxisSpacing: Checkbox.width,
                crossAxisSpacing: Checkbox.width),
            itemCount: cards.length,

            shrinkWrap: true,
            // physics: BouncingScrollPhysics(),
            itemBuilder: (context, index)
            {
              return MovieCardDesign(
                item: cards[index],
              );
            },
          ),
        )
      ],
    );
  }
}
