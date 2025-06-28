import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Manajemen Informatika',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Politeknik MKM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Beranda'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.visibility),
            title: const Text('Visi & Misi'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/visi-misi');
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Prospek Kerja'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/prospek');
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text('Mata Kuliah'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/matakuliah');
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_events),
            title: const Text('Prestasi'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/prestasi');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Alumni'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/alumni');
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Galeri Kegiatan'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/gallery');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Tentang Kami'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}
