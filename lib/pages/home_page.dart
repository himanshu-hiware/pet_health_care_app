
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final data1='''Nothing compares to the joy of coming home to a loyal companion. The unconditional love of a pet can do more than keep you company. Pets may also decrease stress, improve heart health, and even help children with their emotional and social skills.

An estimated 68% of U.S. households have a pet. But who benefits from an animal? And which type of pet brings health benefits?

Over the past 10 years, NIH has partnered with the Mars Corporation’s WALTHAM Centre for Pet Nutrition to answer questions like these by funding research studies.

Scientists are looking at what the potential physical and mental health benefits are for different animals—from fish to guinea pigs to dogs and cats.''';
  final data2='''Grooming pets is an important part of animal care. Most animals can be taught to enjoy grooming at any age. Regular pet grooming will help you build and maintain healthy relationships with your pets, and practice gentle leadership skills. Another benefit of grooming is that you may notice a physical change that needs medical attention, something that might not have been obvious if you hadn’t been grooming your pet. If you find any lumps, bumps or soreness, schedule an appointment with your veterinarian for a checkup. 
  Start the grooming process by gently touching all the animal’s body parts. If any parts seem sore, stop and schedule an appointment with your veterinarian for a checkup. If your pet seems uncomfortable with your touch, remember that animals learn positive associations with repetition and praise. ''';
  final data3='''Have you ever wondered why we schedule your pet for a once or twice yearly wellness examination? Perhaps you’ve shrugged off a few of these exams, thinking that your pet seems healthy, so there’s no reason to bring him or her in… Or perhaps you care for a smaller or exotic pet, such as a rabbit, guinea pig, or bird, and haven’t considered that they could benefit from regular wellness visits.

Wellness care for pets is an important piece of the pet care puzzle. Making sure you adhere to your pet’s regularly scheduled wellness exams can have a lasting, positive impact on his or her health, longevity, and well being.''';
  final curves=10.0;
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: const Text(
            'PetO',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,

            )

        ),
        backgroundColor: Colors.white38,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
          child: SafeArea(
            child:ListView(
        scrollDirection: Axis.horizontal,
        padding:EdgeInsets.all(10.0),
        children: [
              FlipCard(
              fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front : Container(
                height: 100,
                width: 400,
                child: Card(
                  color: Colors.white,// card color
                  // shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(curves) // corner curves
                  ),
                  elevation: 5.0,
                  margin: EdgeInsets.all(7.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/blog1.png"),
                        fit: BoxFit.fitWidth
                      )
                    ),
                    child: Text(
                        "Know your Pet",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                        fontSize: 40,
                        height: 3,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                    ),
                  )
                  ),
                ),
                back : Container(
                  height: 100,
                  width: 400,
                  child: Card(
                    color: Colors.white,// card color
                    // shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(curves) // corner curves
                    ),
                    elevation: 5.0,
                    margin: EdgeInsets.all(7.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                        child :Text(
                        data1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comicNeue(
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )
                        ),
                  ),
                  ),

                ),

              ),FlipCard(
              fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front : Container(
                height: 100,
                width: 400,
                child: Card(
                  color: Colors.white,// card color
                  // shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(curves) // corner curves
                  ),
                  elevation: 5.0,
                  margin: EdgeInsets.all(7.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/blog2.png"),
                        fit: BoxFit.contain
                      )
                    ),
                    child: Text(
                        "Groom your Pet",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                        fontSize: 40,
                        height: 3,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                    ),
                  )
                  ),
                ),
                back : Container(
                  height: 100,
                  width: 400,
                  child: Card(
                    color: Colors.white,// card color
                    // shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(curves) // corner curves
                    ),
                    elevation: 5.0,
                    margin: EdgeInsets.all(7.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                        child :Text(
                        data2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comicNeue(
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )
                        ),
                  ),
                  ),

                ),

              ),FlipCard(
              fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front : Container(
                height: 100,
                width: 400,
                child: Card(
                  color: Colors.white,// card color
                  // shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(curves) // corner curves
                  ),
                  elevation: 5.0,
                  margin: EdgeInsets.all(7.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/blog3.png"),
                        fit: BoxFit.fitWidth
                      )
                    ),
                    child: Text(
                        "Health And Fitness",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dancingScript(
                        fontSize: 40,
                        height: 3,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                    ),
                  )
                  ),
                ),
                back : Container(
                  height: 100,
                  width: 400,
                  child: Card(
                    color: Colors.white,// card color
                    // shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(curves) // corner curves
                    ),
                    elevation: 5.0,
                    margin: EdgeInsets.all(7.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                        child :Text(
                        data3,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.comicNeue(
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        )
                        ),
                  ),
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
