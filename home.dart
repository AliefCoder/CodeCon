import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 186, 180),
      ),
      body: Column(
        children: [
          
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              'Chose your service type',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),

          // Grid of icons and labels
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: <Widget>[
                _buildGridItem(Icons.medical_services, 'Health Monitoring '),
                _buildGridItem(Icons.calendar_today, 'Personal Reminders'),
                _buildGridItem(Icons.health_and_safety, 'Educational Content'),
                _buildGridItem(Icons.local_pharmacy, 'Consultation'),
                _buildGridItem(Icons.lock_clock, 'Check-up Scheduling'),
                _buildGridItem(Icons.run_circle_rounded, 'Bersukan'),
               
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each grid item
  Widget _buildGridItem(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50.0, color: const Color.fromARGB(255, 0, 186, 180)),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
