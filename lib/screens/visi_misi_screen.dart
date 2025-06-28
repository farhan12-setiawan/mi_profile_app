import 'package:flutter/material.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class VisiMisiScreen extends StatelessWidget {
  const VisiMisiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visi & Misi'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Visi Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '"Menjadi program studi unggulan di bidang Manajemen Informatika yang menghasilkan lulusan profesional, berkarakter, dan mampu bersaing di tingkat nasional maupun internasional pada tahun 2030."',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),
            const Text(
              'Misi Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMisiItem(
                  '1. Menyelenggarakan pendidikan tinggi di bidang Manajemen Informatika yang berkualitas dan berorientasi pada kebutuhan industri.',
                ),
                _buildMisiItem(
                  '2. Melaksanakan penelitian dan pengembangan ilmu pengetahuan dan teknologi di bidang Manajemen Informatika yang bermanfaat bagi masyarakat.',
                ),
                _buildMisiItem(
                  '3. Melaksanakan pengabdian kepada masyarakat berbasis hasil penelitian dan keahlian di bidang Manajemen Informatika.',
                ),
                _buildMisiItem(
                  '4. Menjalin kerjasama dengan berbagai pihak untuk meningkatkan kualitas pendidikan, penelitian, dan pengabdian masyarakat.',
                ),
                _buildMisiItem(
                  '5. Mengembangkan lingkungan akademik yang mendukung pengembangan karakter dan kompetensi lulusan.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMisiItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• '),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
