import 'package:flutter/material.dart';
import 'package:mi_profile_app/models/alumni.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class AlumniScreen extends StatelessWidget {
   AlumniScreen({super.key});

  final List<Alumni> _alumniList =[
    Alumni(
      nama: "Budi Santoso",
      tahunLulus: "2020",
      pekerjaan: "System Analyst di Telkom",
      foto: "assets/alumni/budi.jpg",
    ),
    Alumni(
      nama: "Ani Rahmawati",
      tahunLulus: "2019",
      pekerjaan: "IT Consultant di Accenture",
      foto: "assets/alumni/ani.jpg",
    ),
    Alumni(
      nama: "Citra Dewi",
      tahunLulus: "2021",
      pekerjaan: "Web Developer di Tokopedia",
      foto: "assets/alumni/citra.jpg",
    ),
    Alumni(
      nama: "Dodi Pratama",
      tahunLulus: "2018",
      pekerjaan: "Database Administrator di Bank Mandiri",
      foto: "assets/alumni/dodi.jpg",
    ),
    Alumni(
      nama: "Eka Putri",
      tahunLulus: "2022",
      pekerjaan: "Business Intelligence Specialist di Gojek",
      foto: "assets/alumni/eka.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumni'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Profil Alumni',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Berikut adalah beberapa alumni Program Studi Manajemen Informatika yang telah sukses di dunia kerja:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _alumniList.length,
              itemBuilder: (context, index) {
                final alumni = _alumniList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(alumni.foto),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                alumni.nama,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Lulus: ${alumni.tahunLulus}',
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                alumni.pekerjaan,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
