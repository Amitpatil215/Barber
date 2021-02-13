import 'package:flutter/material.dart';

class BarberProfile extends StatefulWidget {
  @override
  BarberProfileState createState() => BarberProfileState();
}

class BarberProfileState extends State<BarberProfile>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/shave.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: MediaQuery.of(context).size.width / 3.5,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/p1.jpg'),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 300,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Ismail Khalifa',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Professional Barber at Dex's Shop",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.my_library_books_outlined,
                    size: 35,
                    color: Colors.purple,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.chat,
                    size: 35,
                    color: Colors.purple,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.rate_review,
                    size: 35,
                    color: Colors.purple,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              labelStyle: TextStyle(fontSize: 22),
              tabs: [
                Tab(
                  text: 'About',
                ),
                Tab(
                  text: 'Gallery',
                ),
                Tab(
                  text: 'Reviews',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Text('people'),
                  Container(
                      height: 200,
                      child: GridView.count(
                        crossAxisCount: 3,
                        children: [
                          ImageCut(
                            image: 'assets/images/s1.jpg',
                          ),
                          ImageCut(
                            image: 'assets/images/s2.jpg',
                          ),
                          ImageCut(
                            image: 'assets/images/s3.jpg',
                          ),
                          ImageCut(
                            image: 'assets/images/s4.jpg',
                          ),
                          ImageCut(
                            image: 'assets/images/s5.jpg',
                          ),
                          ImageCut(
                            image: 'assets/images/s6.jpg',
                          ),
                        ],
                      )),
                  Text("Review"),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCut extends StatelessWidget {
  final String image;
  const ImageCut({
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
