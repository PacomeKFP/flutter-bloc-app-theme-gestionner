import 'package:flutter/material.dart';



class Demopage extends StatelessWidget {
  const Demopage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voyage au Cameroun"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark_border))
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Image.network(
              'https://photo620x400.mnstatic.com/14cd4c40ecebb63bc6095d5a8c13bfab/plage-de-kribi.jpg?quality=70&format=pjpg',
              
            ),
            ListTile(
              title: Text(
                "Bienvenue Au cameroun",
                style: Theme.of(context).textTheme.headline3,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Reservez pour votre voyage",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Text(
                  "Vacances en bord de mer ou séjour culturel ? Les deux et bien plus ! Car un voyage en Thaïlande a de quoi emballer les adeptes de farniente, les passionnés de visites, les randonneurs, les plongeurs...\n"
                  "En passant par Bangkok et ses fameux temples, Chiang Mai la moderne ou en vous prélassant sur une des nombreuses îles comme l'île de Phuket, Koh Phi Phi, Koh Samui, votre circuit en Thaïlande vous fera découvrir les différentes facettes d’un pays en mutation.\n"
                  "Découvrez que voir en Thaïlande ..."),
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.max,
              alignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.local_hotel_outlined)),
                    Text("HOTELS",
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.airplanemode_active_rounded)),
                    Text("VOLS",
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.car_crash_outlined)),
                    Text("VOITURES",
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: const Center(child: Text("Je reserve dès maintenant")),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
