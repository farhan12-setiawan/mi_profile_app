import 'package:flutter/material.dart';
import 'package:mi_profile_app/screens/home_screen.dart';
import 'package:mi_profile_app/screens/visi_misi_screen.dart';
import 'package:mi_profile_app/screens/prospek_screen.dart';
import 'package:mi_profile_app/screens/mata_kuliah_screen.dart';
import 'package:mi_profile_app/screens/prestasi_screen.dart';
import 'package:mi_profile_app/screens/alumni_screen.dart';
import 'package:mi_profile_app/screens/gallery_screen.dart';
import 'package:mi_profile_app/screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prodi Manajemen Informatika',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(), // Tetap gunakan home
      debugShowCheckedModeBanner: false,
      routes: {
        // Hapus entri untuk rute default
        // '/': (context) => const HomeScreen(), // Baris ini dihapus
        '/visi-misi': (context) => const VisiMisiScreen(),
        '/prospek': (context) => const ProspekScreen(),
        '/matakuliah': (context) => MataKuliahScreen(),
        '/prestasi': (context) =>  PrestasiScreen(),
        '/alumni': (context) => AlumniScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}