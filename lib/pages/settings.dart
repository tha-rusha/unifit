import 'package:flutter/material.dart';

/// A Flutter widget representing a settings screen.
///
/// The `Settings` widget builds a `Scaffold` widget that provides a basic structure for the screen.
/// It includes an `AppBar` at the top with a custom background color, a fixed height, and rounded borders.
/// The `AppBar` contains a leading icon button that opens a menu, a centered title with a custom font and style,
/// and a row of action icons on the right side.
///
/// The body of the screen is a `Column` widget that contains a container with a light green background color and padding.
/// Inside the container, there are two sections: "Options" and "Actions".
/// Each section is represented by a `Text` widget with a bold font and a list of `SettingsItem` widgets.
///
/// The `SettingsItem` widget represents a single item in the settings list.
/// It includes an icon, a title, and an `onTap` callback function.
/// The icon and title are displayed in a row inside a container with a white background color and rounded borders.
/// When the user taps on the item, the `onTap` callback function is called.
///
/// At the bottom of the screen, there is a custom back button widget called `CustomBackButton`.
/// It displays an arrow back icon and a text label.
/// When the user taps on the button, the `onPressed` callback function is called.
/// In this case, it uses the `Navigator.pop` function to go back to the previous screen.
///
/// The `Settings` widget can be used as a standalone screen or integrated into a larger application.
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/// A custom back button widget that can be used in Flutter applications.
///
/// The [CustomBackButton] widget displays a container with a rounded border and a background color.
/// Inside the container, there is an arrow back icon and a text label.
/// When the button is pressed, the [onPressed] callback function is called.
class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  /// Creates a [CustomBackButton] widget.
  ///
  /// The [onPressed] parameter is a required callback function that is called when the button is pressed.
  const CustomBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Color(0xFF19A49C),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Back to Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(220, 28, 232, 164),
        toolbarHeight: 100,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
            bottomRight: Radius.circular(70),
            bottomLeft: Radius.circular(70),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.menu,
              size: 40,
              color: Colors.black,
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Handle person icon click
              // You can navigate to another page or perform other actions
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 26),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          Container(
            color: Color(0xFFE4F7F2),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Options',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.person,
                  title: 'Edit Profile',
                  onTap: () {
                    // Navigate to Edit Profile page
                  },
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.security,
                  title: 'Security',
                  onTap: () {
                    // Navigate to Security page
                  },
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.notifications,
                  title: 'Notification',
                  onTap: () {
                    // Navigate to Notification page
                  },
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.payment,
                  title: 'Payment',
                  onTap: () {
                    // Navigate to Payment page
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Actions',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.privacy_tip,
                  title: 'Privacy Policy',
                  onTap: () {
                    // Navigate to Notification page
                  },
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.help,
                  title: 'Help & Support',
                  onTap: () {
                    // Navigate to Payment page
                  },
                ),
                SizedBox(height: 10),
                SettingsItem(
                  icon: Icons.logout,
                  title: 'Log Out',
                  onTap: () {
                    // Navigate to Notification page
                  },
                ),
              ],
            ),
          ),
          Spacer(), // Add space to push the button to the bottom
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomBackButton(
              onPressed: () {
                // Handle back button action here
                Navigator.pop(
                    context); // Example: Go back to the previous screen
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 30),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
