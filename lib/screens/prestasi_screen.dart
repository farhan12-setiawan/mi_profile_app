import 'package:flutter/material.dart';
import 'package:mi_profile_app/models/prestasi.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class PrestasiScreen extends StatelessWidget {
   PrestasiScreen({super.key});

  final List<Prestasi> _prestasiList =  [
    Prestasi(
      judul: "Juara 1 Lomba Aplikasi Mobile Nasional",
      deskripsi: "Mahasiswa kami meraih juara 1 dalam kompetisi pengembangan aplikasi mobile tingkat nasional",
      tahun: "2023",
      foto: "assets/prestasi/mobile.jpg",
    ),
    Prestasi(
      judul: "Best Paper di Konferensi Internasional",
      deskripsi: "Dosen dan mahasiswa meraih penghargaan best paper di konferensi internasional tentang sistem informasi",
      tahun: "2022",
      foto: "assets/prestasi/paper.jpg",
    ),
    Prestasi(
      judul: "Juara 2 Hackathon Fintech",
      deskripsi: "Tim kami meraih juara 2 dalam kompetisi hackathon yang diselenggarakan oleh bank ternama",
      tahun: "2021",
      foto: "assets/prestasi/hackathon.jpg",
    ),
    Prestasi(
      judul: "Akreditasi A dari BAN-PT",
      deskripsi: "Program Studi kami meraih akreditasi A dari Badan Akreditasi Nasional Perguruan Tinggi",
      tahun: "2020",
      foto: "assets/prestasi/akreditasi.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestasi'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prestasi Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Berbagai prestasi yang telah diraih oleh Program Studi, dosen, dan mahasiswa Manajemen Informatika:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _prestasiList.length,
              itemBuilder: (context, index) {
                final prestasi = _prestasiList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      Image.asset(
                        prestasi.foto,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              prestasi.judul,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              prestasi.deskripsi,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Chip(
                                  label: Text(prestasi.tahun),
                                  backgroundColor: Colors.blue[100],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
