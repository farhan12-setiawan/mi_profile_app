import 'package:flutter/material.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selamat Datang di',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Program Studi Manajemen Informatika',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/gedung.jpg'),
            const SizedBox(height: 20),
            const Text(
              'Tentang Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Program Studi Manajemen Informatika merupakan program studi yang memadukan pengetahuan di bidang teknologi informasi dengan prinsip-prinsip manajemen bisnis. Kami menghasilkan lulusan yang siap bersaing di era digital.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Keunggulan Kami',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 8),
                Text('Kurikulum berbasis industri'),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 8),
                Text('Dosen berpengalaman'),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 8),
                Text('Fasilitas lengkap'),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 8),
                Text('Kerjasama dengan perusahaan IT'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
