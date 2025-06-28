import 'package:flutter/material.dart';
import 'package:mi_profile_app/models/mata_kuliah.dart';
import 'package:mi_profile_app/widgets/drawer_widget.dart';

class MataKuliahScreen extends StatelessWidget {
   MataKuliahScreen({super.key});

  final List<MataKuliah> _mataKuliahList =  [
    MataKuliah(
      kode: "MI101",
      nama: "Pengantar Manajemen Informatika",
      sks: 3,
      semester: "1",
    ),
    MataKuliah(
      kode: "MI102",
      nama: "Algoritma dan Pemrograman",
      sks: 4,
      semester: "1",
    ),
    MataKuliah(
      kode: "MI201",
      nama: "Basis Data",
      sks: 3,
      semester: "2",
    ),
    MataKuliah(
      kode: "MI202",
      nama: "Sistem Informasi Manajemen",
      sks: 3,
      semester: "2",
    ),
    MataKuliah(
      kode: "MI301",
      nama: "Pemrograman Web",
      sks: 3,
      semester: "3",
    ),
    MataKuliah(
      kode: "MI302",
      nama: "Jaringan Komputer",
      sks: 3,
      semester: "3",
    ),
    MataKuliah(
      kode: "MI401",
      nama: "Analisis dan Desain Sistem",
      sks: 3,
      semester: "4",
    ),
    MataKuliah(
      kode: "MI402",
      nama: "Manajemen Proyek TI",
      sks: 3,
      semester: "4",
    ),
    MataKuliah(
      kode: "MI501",
      nama: "Business Intelligence",
      sks: 3,
      semester: "5",
    ),
    MataKuliah(
      kode: "MI502",
      nama: "Keamanan Sistem Informasi",
      sks: 3,
      semester: "5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mata Kuliah'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Kurikulum Program Studi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Berikut adalah daftar mata kuliah yang diajarkan di Program Studi Manajemen Informatika:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Semester 1'),
                      Tab(text: 'Semester 2'),
                      Tab(text: 'Semester 3'),
                      Tab(text: 'Semester 4'),
                      Tab(text: 'Semester 5'),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      children: [
                        _buildSemesterList('1'),
                        _buildSemesterList('2'),
                        _buildSemesterList('3'),
                        _buildSemesterList('4'),
                        _buildSemesterList('5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSemesterList(String semester) {
    final filteredList = _mataKuliahList.where((mk) => mk.semester == semester).toList();

    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (context, index) {
        final mk = filteredList[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            title: Text(mk.nama),
            subtitle: Text('Kode: ${mk.kode} | SKS: ${mk.sks}'),
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Text(mk.semester),
            ),
          ),
        );
      },
    );
  }
}
