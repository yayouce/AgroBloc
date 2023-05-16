import "package:flutter/material.dart";

class UsineAccueil extends StatelessWidget {
  const UsineAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Accueil',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRestaurantCard(
                    "Graphe1",
                    'images/pic/graphique1-bg-preview.png',
                  ),
                  _buildRestaurantCard(
                    'Graphe2',
                    'images/pic/graphique2-remove.png',
                  ),
                  _buildRestaurantCard(
                    'Graphe3',
                    'images/pic/graphique3-remove.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6),
              child: Text(
                'Transactions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildFeaturedDishCard(
                      'COOP_VASS',
                      'images/pic/animation.gif',
                      'cooperative agricole spécialisé dans le cacao '),
                  _buildFeaturedDishCard(
                    'COPP_AB',
                    'images/pic/animation.gif',
                    'cooperative agricole spécialisé dans le cacao',
                  ),
                  _buildFeaturedDishCard(
                    'COOP_SINDOU',
                    'images/pic/transaction.gif',
                    'cooperative agricole spécialisé dans le cacao',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(String title, String imagePath) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedDishCard(
      String name, String imagePath, String restaurant) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 245, 180, 52),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  restaurant,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.wallet,
                      size: 16,
                      color: Color.fromARGB(227, 230, 111, 14),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
