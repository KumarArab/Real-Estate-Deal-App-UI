import 'package:RealEstateDealsWebUI/color.dart';
import 'package:RealEstateDealsWebUI/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class WebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: _width * 0.05,
            vertical: _width * 0.03,
          ),
          padding: EdgeInsets.all(
            _width * 0.005,
          ),
          height: _width * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              _width * 0.025,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: _width * 0.05,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      _width * 0.02,
                    ),
                    bottomLeft: Radius.circular(
                      _width * 0.02,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaWeb(text: "FACEBOOK"),
                    SocialMediaWeb(text: "INSTAGRAM"),
                    SocialMediaWeb(text: "TWITTER"),
                    SocialMediaWeb(text: "LINKEDIN"),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: _width * 0.01,
                    horizontal: _width * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          logo,
                          height: _width * 0.03,
                          width: _width * 0.03,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BEST REAL ESTATE DEALS",
                                style: GoogleFonts.roboto(
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: _width * 0.012,
                                ),
                              ),
                              SizedBox(
                                height: _width * 0.013,
                              ),
                              Text(
                                "We Provide Your Dream Home",
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: _width * 0.04,
                                  height: 1,
                                  color: secondaryColorDark,
                                ),
                              ),
                              SizedBox(height: _width * 0.01),
                              Text(
                                "DreamHome is an innovative real estate company that\nhelps you to find your perfect home.",
                                style: GoogleFonts.roboto(
                                  fontSize: _width * 0.012,
                                  color: tertiaryColor,
                                ),
                              ),
                              SizedBox(
                                height: _width * 0.01,
                              ),
                              Icon(
                                Icons.arrow_circle_down,
                                size: _width * 0.03,
                                color: tertiaryColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          _width * 0.02,
                        ),
                        bottomRight: Radius.circular(
                          _width * 0.02,
                        ),
                      ),
                    ),
                    child: CarouselWeb()),
              ),
            ],
          ),
        ),
        Positioned(
          top: _width * 0.35,
          left: _width * 0.135,
          child: Container(
            width: _width * 0.5,
            height: _width * 0.12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find Dream Home",
                  style: GoogleFonts.roboto(
                    color: secondaryColorDark,
                    fontWeight: FontWeight.w500,
                    fontSize: _width * 0.014,
                  ),
                ),
                SizedBox(
                  height: _width * 0.01,
                ),
                Container(
                  width: double.infinity,
                  height: _width * 0.07,
                  margin: EdgeInsets.symmetric(
                    vertical: _width * 0.005,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: _width * 0.01,
                  ),
                  decoration:
                      BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: Offset(-5, -5),
                    ),
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Select Price Range",
                              style: GoogleFonts.montserrat(
                                color: tertiaryColor,
                                fontSize: _width * 0.01,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                      Container(
                        width: _width * 0.22,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                "Enter the Area, City, Location, Zip Code etc",
                            hintStyle: GoogleFonts.montserrat(
                              color: tertiaryColor,
                              fontSize: _width * 0.01,
                            ),
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: secondaryColorDark,
                        padding: EdgeInsets.symmetric(
                          horizontal: _width * 0.03,
                          vertical: _width * 0.015,
                        ),
                        child: Text(
                          "Search",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: _width * 0.013,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CarouselWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              _width * 0.02,
            ),
            bottomRight: Radius.circular(
              _width * 0.02,
            ),
          ),
          child: new Image.network(
            CarouselImages[index],
            fit: BoxFit.cover,
          ),
        );
      },
      autoplay: true,
      itemCount: CarouselImages.length,
      pagination: new SwiperPagination(),
    );
  }
}

class SocialMediaWeb extends StatelessWidget {
  final String text;
  SocialMediaWeb({this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _width * 0.01,
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: tertiaryColor,
            fontSize: _width * 0.01,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
