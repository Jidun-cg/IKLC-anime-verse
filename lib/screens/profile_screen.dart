import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../config/routes.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: screenWidth * 0.075,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar Section
              CircleAvatar(
                radius: screenWidth * 0.15,
                backgroundColor: const Color(0xFF0b395e),
                child: Icon(
                  Icons.person,
                  size: screenWidth * 0.18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // User Name & Email
              Text(
                'Otaku Member',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                'user@animeverse.com',
                style: TextStyle(
                  fontSize: screenWidth * 0.038,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // Profile Action Buttons
              ProfileButton(
                icon: Icons.edit,
                title: 'Edit Profile',
                subtitle: 'Update your personal information',
                onTap: () {},
              ),
              ProfileButton(
                icon: Icons.notifications,
                title: 'Notifications',
                subtitle: 'Manage your notification preferences',
                onTap: () {},
              ),
              ProfileButton(
                icon: Icons.settings,
                title: 'Settings',
                subtitle: 'App preferences and dark mode',
                onTap: () {},
              ),
              SizedBox(height: screenHeight * 0.02),

              // Logout Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.go(AppRoutes.signIn);
                  },
                  icon: const Icon(Icons.logout, color: Colors.white),
                  label: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.018),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
