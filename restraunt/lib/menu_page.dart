// import 'package:flutter/material.dart';

// class MenuPage extends StatelessWidget {
//   const MenuPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Menu Page'),
//       ),
//       body: Center(
//         child: Image.asset('assets/images/tea.jpg'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// menu_page.dart
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildFoodItem(
                'assets/images/paneer-tika.jpg', 'Paneer Tika', '₹220'),
            const SizedBox(height: 12),
            _buildFoodItem(
                'assets/images/chole-kulche.jpg', 'Chole Kulche', '₹150'),
            const SizedBox(height: 12),
            _buildFoodItem(
                'assets/images/gata.jpg', 'Veg Gatee Ki Sabzi', '₹180'),
            const SizedBox(height: 12),
            _buildFoodItem(
                'assets/images/daal-bati.jpg', 'Daal Bati Churma', '₹200'),
            const SizedBox(height: 12),
            _buildFoodItem('assets/images/thali.jpg', 'Veg Thali', '₹200'),
            const SizedBox(height: 12),
            _buildFoodItem(
                'assets/images/aloo-paratha.jpg', 'Aloo Ka Paratha', '₹20'),
            const SizedBox(height: 12),
            _buildFoodItem('assets/images/tea.jpg', 'Tea', '₹25'),
            const SizedBox(height: 12),
            _buildFoodItem('assets/images/coffee.jpg', 'Coffee', '₹40'),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imagePath, String name, String price) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
