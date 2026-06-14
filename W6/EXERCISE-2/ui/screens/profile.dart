import 'package:flutter/material.dart';
import '../../model/profile_tile_model.dart';
import '../theme/theme.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key, required this.profileData});
  final ProfileData profileData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary.withAlpha(100),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(profileData.avatarUrl),
                ),
                const SizedBox(height: 20),
                Text(
                  profileData.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  profileData.position,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
              ],
            ),

            ...profileData.tiles.map((tile) => ProfileTile(tileData: tile)),
          ],
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     const SizedBox(height: 40),
        //     const CircleAvatar(
        //       radius: 60,
        //       backgroundImage: AssetImage('avatars/aang.jpg'),
        //     ),
        //     const SizedBox(height: 20),
        //     Text(
        //       'Ronan OGOR',
        //       style: TextStyle(
        //         fontSize: 24,
        //         fontWeight: FontWeight.bold,
        //         color: AppColors.primary,
        //       ),
        //     ),
        //     const Text(
        //       'Flutter Developer',
        //       style: TextStyle(fontSize: 16, color: Colors.grey),
        //     ),
        //     const SizedBox(height: 20),
        //     const ProfileTile(
        //       icon: Icons.phone,
        //       title: "Phone Number",
        //       data: "+123 456 7890",
        //     ),
        //     const ProfileTile(
        //       icon: Icons.location_on,
        //       title: "Address",
        //       data: "Cambodia",
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key, required this.tileData});

  final TileData tileData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          leading: Icon(tileData.icon, color: AppColors.primary),
          title: Text(tileData.title),
          subtitle: Text(tileData.value),
        ),
      ),
    );
  }
}
