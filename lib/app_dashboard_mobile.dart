import 'package:flutter/material.dart';

// Main entry point for the dashboard
class DashboardScreen extends StatefulWidget {
const DashboardScreen({super.key});

@override
State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
// Current selected index for bottom navigation
int _selectedIndex = 0;

// List of pages to display
final List<Widget> _pages = [
    const HomePage(),
    const AnalyticsPage(),
    const ProfilePage(),
    const SettingsPage(),
];

// Handle bottom navigation tap
void _onItemTapped(int index) {
    setState(() {
    _selectedIndex = index;
    });
}

@override
Widget build(BuildContext context) {
    return Scaffold(
    // Body content based on selected index
    body: _pages[_selectedIndex],
    
    // Modern bottom navigation bar with Material 3 design
    bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        destinations: const [
        NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
        ),
        NavigationDestination(
            icon: Icon(Icons.analytics_outlined),
            selectedIcon: Icon(Icons.analytics),
            label: 'Analytics',
        ),
        NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
        ),
        NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
        ),
        ],
    ),
    );
}
}

// Home page widget
class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
    ),
    body: const Center(
        child: Text('Home Page Content'),
    ),
    );
}
}

// Analytics page widget
class AnalyticsPage extends StatelessWidget {
const AnalyticsPage({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Analytics'),
        centerTitle: true,
    ),
    body: const Center(
        child: Text('Analytics Page Content'),
    ),
    );
}
}

// Profile page widget
class ProfilePage extends StatelessWidget {
const ProfilePage({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
    ),
    body: const Center(
        child: Text('Profile Page Content'),
    ),
    );
}
}

// Settings page widget
class SettingsPage extends StatelessWidget {
const SettingsPage({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
    ),
    body: const Center(
        child: Text('Settings Page Content'),
    ),
    );
}
}

