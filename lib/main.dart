import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ders2_1/firebase_options.dart';
import 'package:ders2_1/widget/alt_buton.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:page_indicator/page_indicator.dart';

import 'widget/deal_of_day.dart';
import 'widget/drawer_widget.dart';
import 'widget/hot_selling_widget.dart';
import 'widget/mainpage_category_widget.dart';

Future<void> main() async {
/*  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
*/

  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (hata) {
    print(hata);
  }
  ;

  //FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // islemYap("ss",2);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "varliklar/notification.png",
                width: 24,
                height: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "varliklar/bag.png",
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.search_rounded),
                    labelText: "Search Anything...",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "View All->",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FutureBuilder(
                      future: FirebaseFirestore.instance
                          .collection("categories")
                          .get(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final categoryList =
                              snapshot.data!.docs.map((e) => e.data()).toList();
                          return Row(
                            children: [
                              SizedBox(width: 6),
                              for (final data in categoryList)
                                MainPageCategoryWidget(
                                  title: data['name'],
                                  imageUrl: data['imageUrl'],
                                ),
                              //Text(categoryList.toString()),
                              SizedBox(width: 16),
                            ],
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
                ),
              ),
              SizedBox(height: 16),
              //banner(),
              SizedBox(height: 16),
              dealOfTheDay(),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotSellingWidget(
                        resimAdi: "urun1.jpg",
                        urunAdi: "Adidas white sneakers for men",
                        urunFiyati: 67,
                        indirimsizFiyati: 56,
                        yapilanIndirim: "48% İndirim"),
                    HotSellingWidget(
                        resimAdi: "urun2.jpg",
                        urunAdi: "Nike black running shoes for men",
                        urunFiyati: 45,
                        indirimsizFiyati: 76,
                        yapilanIndirim: "8% İndirim"),
                    HotSellingWidget(
                        resimAdi: "urun3.jpg",
                        urunAdi: "Nike sky blue & white Sneakers",
                        urunFiyati: 53,
                        indirimsizFiyati: 39,
                        yapilanIndirim: "6% İndirim"),
                  ],
                ),
              ),
              Center(
                child: Text("he he"),
              ),
            ],
          ),
        ),
        drawer: DrawerWidget(),
        bottomNavigationBar: AltButonWidget(),
      ),
    );
  }
}

Widget altButon() {
  return NavigationBar(
    /* onDestinationSelected: (int index) {
      setState(() {
      currentPageIndex = index;
      });
    },*/
    indicatorColor: Colors.amber,
    // selectedIndex: currentPageIndex,
    destinations: const <Widget>[
      NavigationDestination(
        selectedIcon: Icon(Icons.home),
        icon: Icon(Icons.home_outlined),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Badge(child: Icon(Icons.category)),
        label: 'Categories',
      ),
      NavigationDestination(
        icon: Badge(
          label: Text('2'),
          child: Icon(Icons.access_time),
        ),
        label: 'Orders',
      ),
      NavigationDestination(
        icon: Badge(
          label: Text('2'),
          child: Icon(Icons.account_box),
        ),
        label: 'Profile',
      ),
    ],
  );
}

Widget dealOfTheDay() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Deal of the day",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "View All->",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          color: Colors.red,
          width: 158,
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "11",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "HRS",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Text(
                "15",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "MIN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Text(
                "04",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "SEC",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DealOfDayWidget("Running", "Running Shoes", "Upto 40% OFF"),
                  DealOfDayWidget("Sneakers", "Sneakers", "40-60% OFF"),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DealOfDayWidget("Wrist", "Wrist Watches", "Upto 40% OFF"),
                  DealOfDayWidget(
                      "Speaker", "Bluetooth Speakers", "40-60% OFF"),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/*
Widget banner() {
  return Container(
    color: Colors.pink,
    child: Container(
      height: 154.0,
      child: PageIndicatorContainer(
        //key: key,
        child: PageView(
          children: <Widget>[
            Image.asset(
              "varliklar/Slider1.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "varliklar/Slider2.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "varliklar/Slider3.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "varliklar/Slider4.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "varliklar/Slider5.jpg",
              fit: BoxFit.cover,
            ),
          ],
          //controller: controller,
          reverse: false,
        ),
        align: IndicatorAlign.bottom,
        length: 5,
        indicatorSpace: 10.0,
      ),
    ),
  );
}*/

/* FutureBuilder(
                              future: FirebaseFirestore.instance
                                  .collection("categories")
                                  .doc("L642n5JnejRywwgW2aPP")
                                  .get(),
                              builder: (context,snapshot){
                                if (snapshot.hasData){
                                  final data=snapshot.data!.data();
                                  return  MainPageCategoryWidget(
                                    title: data == null ? "bulunamadı" : data['name'] ,
                                    imageUrl: "",
                                  );
                                } else
                                  return CircularProgressIndicator();
                                }
                              ),*/
