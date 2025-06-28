import 'package:flutter/material.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tentang Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Program Studi Manajemen Informatika merupakan salah satu program studi di Fakultas Ilmu Komputer yang berdiri sejak tahun 2010. Program studi ini memadukan pengetahuan di bidang teknologi informasi dengan prinsip-prinsip manajemen bisnis.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Visi & Misi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Visi: "Menjadi program studi unggulan di bidang Manajemen Informatika yang menghasilkan lulusan profesional, berkarakter, dan mampu bersaing di tingkat nasional maupun internasional pada tahun 2030."',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            const Text(
              'Misi: Menyelenggarakan pendidikan tinggi di bidang Manajemen Informatika yang berkualitas dan berorientasi pada kebutuhan industri.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'Kontak Kami',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildContactItem(Icons.location_on, 'Jl. Pendidikan No. 123, Kota XYZ'),
            _buildContactItem(Icons.phone, '(021) 12345678'),
            _buildContactItem(Icons.email, 'mi@univxyz.ac.id'),
            _buildContactItem(Icons.web, 'www.mi.univxyz.ac.id'),
            const SizedBox(height: 20),
            const Text(
              'Sosial Media',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                _buildSocialMediaIcon(Icons.facebook, Colors.blue),
                const SizedBox(width: 16),
                _buildSocialMediaIcon(Icons.camera_alt, Colors.pink),
                const SizedBox(width: 16),
                _buildSocialMediaIcon(Icons.link, Colors.blue),
                const SizedBox(width: 16),
                _buildSocialMediaIcon(Icons.play_arrow, Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 16),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcon(IconData icon, Color color) {
    return CircleAvatar(
      backgroundColor: Color.fromARGB(
        (0.2 * 255).toInt(), // Alpha channel untuk opacity 0.2
        ((color.red * 255.0).round() & 0xff), // Merah
        ((color.green * 255.0).round() & 0xff), // Hijau
        ((color.blue * 255.0).round() & 0xff), // Biru
      ),
      child: Icon(icon, color: color),
    );
  }
}