import 'package:flutter/material.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class ProspekScreen extends StatelessWidget {
  const ProspekScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prospek Kerja'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Peluang Karir Lulusan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Lulusan Program Studi Manajemen Informatika memiliki prospek kerja yang sangat luas di berbagai sektor industri. Berikut beberapa peluang karir untuk lulusan kami:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            _buildProspekItem(
              'System Analyst',
              'Menganalisis kebutuhan sistem informasi perusahaan dan merancang solusi IT yang tepat',
            ),
            _buildProspekItem(
              'IT Consultant',
              'Memberikan konsultasi terkait pemanfaatan teknologi informasi untuk bisnis',
            ),
            _buildProspekItem(
              'Database Administrator',
              'Mengelola dan memelihara basis data organisasi',
            ),
            _buildProspekItem(
              'Business Intelligence Specialist',
              'Mengembangkan sistem pendukung keputusan berbasis data',
            ),
            _buildProspekItem(
              'IT Project Manager',
              'Memimpin proyek pengembangan sistem informasi',
            ),
            _buildProspekItem(
              'Web Developer',
              'Mengembangkan aplikasi berbasis web untuk kebutuhan bisnis',
            ),
            _buildProspekItem(
              'Digital Marketing Specialist',
              'Mengelola pemasaran digital dengan memanfaatkan teknologi informasi',
            ),
            const SizedBox(height: 20),
            const Text(
              'Perusahaan yang Bekerjasama',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildCompanyLogo('assets/logos/telkom.png'),
                _buildCompanyLogo('assets/logos/gojek.png'),
                _buildCompanyLogo('assets/logos/tokopedia.png'),
                _buildCompanyLogo('assets/logos/bankmandiri.png'),
                _buildCompanyLogo('assets/logos/pertamina.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProspekItem(String title, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompanyLogo(String imagePath) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset(imagePath),
      ),
    );
  }
}
