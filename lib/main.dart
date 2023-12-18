import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Albert',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want to cook today?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(248, 114, 110, 110),
                          ),
                        ),
                      ],
                    ),
                    AvatarFrame(
                      imageUrl:
                          'https://avatars.githubusercontent.com/u/142523228?s=400&u=843b58efc900ff50c7e280057f8975c7e3c4b93e&v=4',
                    ),
                  ],
                ),

                // Recipes Recommendation
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color:
                          Color.fromARGB(255, 132, 125, 125).withOpacity(0.7),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 245, 242, 242).withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipes recommendation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Get your personalized recipes ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(248, 114, 110, 110),
                                ),
                              ),
                              Text(
                                'recommendation in 4 steps',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(248, 114, 110, 110),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: AvatarFrame(
                              imageUrl:
                                  'https://cdn.pixabay.com/photo/2019/01/23/17/44/ramen-3950790_1280.png',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Get started');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                              backgroundColor:
                                  Color.fromARGB(255, 254, 226, 166),
                            ),
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              print('Skip');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 45),
                            ),
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Popular Recipes
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular recipes',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('See all');
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 230, 143, 13),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularRecipe(
                        imageUrl:
                            'https://cdn.kuali.com/wp-content/uploads/2021/03/26171017/classic-italian-dish-pasta-bolognese-black-background-top-view-horizontal.jpg',
                        dishName: 'Spaghetti Bolognese',
                        type: 'Pasta',
                        time: '30-45 minutes',
                        difficulty: 'Medium',
                        creator: 'Miriam belina',
                      ),
                      SizedBox(width: 10),
                      PopularRecipe(
                        imageUrl:
                            'https://www.foodandwine.com/thmb/20Fp26wbzSMgOtCdCZy0vpIK8Mo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/garlic-butter-prime-rib-FT-RECIPE0621-fca73e5fa8e046b0b03982757db51628.jpg',
                        dishName: 'Classic Beef Steak',
                        type: 'Meat',
                        time: '30-45 minutes',
                        difficulty: 'Easy',
                        creator: 'James Nikidaw',
                      ),
                    ],
                  ),
                ),

                // Popular Creator
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular creator',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('See all');
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 230, 143, 13),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularCreator(
                        imageUrl:
                            'https://www.shutterstock.com/image-photo/isolated-shot-young-handsome-male-600nw-762790210.jpg',
                        creator: 'James Nikidaw',
                        recipe: '124',
                        like: '41391',
                      ),
                      SizedBox(width: 10),
                      PopularCreator(
                        imageUrl:
                            'https://img.freepik.com/free-photo/close-up-beautiful-woman-face-with-natural-makeup-relaxed-expression-standing-beige-backgr_1258-64561.jpg',
                        creator: 'Miriam belina',
                        recipe: '98',
                        like: '7323',
                      ),
                      SizedBox(width: 10),
                      PopularCreator(
                        imageUrl:
                            'https://avatars.githubusercontent.com/u/142523228?s=400&u=843b58efc900ff50c7e280057f8975c7e3c4b93e&v=4',
                        creator: 'Albert Nathaniel',
                        recipe: '89',
                        like: '2114',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 230, 143, 13),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Container(
                width: 50,
                height: 20,
                child: Icon(Icons.home_rounded,
                    color: Color.fromARGB(255, 230, 143, 13)),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Recipe',
          ),
        ],
      ),
    );
  }
}

// Popular Recipes
class PopularRecipe extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String type;
  final String time;
  final String difficulty;
  final String creator;

  PopularRecipe({
    required this.imageUrl,
    required this.dishName,
    required this.type,
    required this.time,
    required this.difficulty,
    required this.creator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color.fromARGB(255, 132, 125, 125).withOpacity(0.7),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 245, 242, 242).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.network(
              imageUrl,
              width: 200,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.00),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10.00),
            child: Text(
              type,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(248, 114, 110, 110),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 6.00),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 20,
                  color: Color.fromARGB(248, 114, 110, 110),
                ),
                SizedBox(width: 6),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(248, 114, 110, 110),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 6.00),
            child: Row(
              children: [
                Icon(
                  Icons.grade_outlined,
                  size: 20,
                  color: Color.fromARGB(248, 114, 110, 110),
                ),
                SizedBox(width: 6),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(248, 114, 110, 110),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.person_outline,
                  size: 20,
                  color: Color.fromARGB(248, 114, 110, 110),
                ),
                SizedBox(width: 6),
                Text(
                  creator,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(248, 114, 110, 110),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Popular Creator
class PopularCreator extends StatelessWidget {
  final String creator;
  final String recipe;
  final String like;
  final String imageUrl;

  PopularCreator({
    required this.creator,
    required this.recipe,
    required this.like,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color.fromARGB(255, 132, 125, 125).withOpacity(0.7),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 245, 242, 242).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Color.fromARGB(255, 245, 242, 242).withOpacity(0.5),
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              creator,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 6.0),
            child: Row(
              children: [
                Icon(
                  Icons.book_outlined,
                  size: 20,
                  color: Color.fromARGB(248, 114, 110, 110),
                ),
                SizedBox(width: 6),
                Text(
                  recipe,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(248, 114, 110, 110),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border_rounded,
                  size: 20,
                  color: Color.fromARGB(248, 114, 110, 110),
                ),
                SizedBox(width: 6),
                Text(
                  like,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(248, 114, 110, 110),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarFrame extends StatelessWidget {
  final String imageUrl;

  AvatarFrame({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
