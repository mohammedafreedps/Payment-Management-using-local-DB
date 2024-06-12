import 'package:flutter/material.dart';

const List<String> settingMenus = [
  'Personal Info',
  'My QR Code',
  'Bank and Cards',
  'Payment Preferences',
  'Automatic Payments',
  'Login and Security',
  'Notifications'
];

const List<IconData> settingIcons = [
  Icons.account_circle,
  Icons.qr_code_scanner,
  Icons.apartment,
  Icons.send,
  Icons.replay,
  Icons.logout,
  Icons.notifications
];

Map<String, String> userDetails = {
  'userName': 'Mae Jamison',
  'userEmail': 'meaj@gmail.com',
  'profileUrl':
      'https://images.unsplash.com/photo-1641320485649-7063cd9f4a79?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
};

List<String> firstNames = [
  'Alex',
  'Lily',
  'Ethan',
  'Olivia',
  'Liam',
  'Emma',
  'Noah',
  'Ava',
  'Lucas',
  'Sophia'
];
List<String> lastNames = [
  'Johnson',
  'Smith',
  'Davis',
  'Brown',
  'Wilson',
  'Taylor',
  'Martinez',
  'Jones',
  'White',
  'Clark'
];

List<String> imageUrls = [
  'https://images.unsplash.com/photo-1605822422016-8e94fef1155e?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1611431239888-d21bb1dd7bbe?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1608073459559-718cec735faa?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1627933997820-8166ef185b95?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1558284924-48ee23778f83?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1595314720602-70fe7f85a524?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1558284811-bebfac1d15e8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1627463153654-d945a975096c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1606602121172-d061678e0906?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1572461488445-2ea8d98eacdd?q=80&w=1966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
];

List<String> products = [
  "Apple iPhone 13 Pro - Graphite",
  "Samsung Galaxy Watch 4 - Black",
  "Sony Playstation 5 - Standard Edition",
  "Dell Alienware Aurora R12 Gaming Desktop",
  "Nintendo Switch Lite - Turquoise",
  "Canon EOS R5 Mirrorless Camera",
  "Bose SoundLink Color Bluetooth Speaker II",
  "Microsoft Xbox Series X Console",
  "Fitbit Versa 3 - Midnight Blue",
  "LG OLED C1 4K TV - 55 inch"
];

List<String> storeNames = [
  "Apple Store",
  "Samsung Experience Store",
  "Sony Store",
  "Dell Store",
  "Nintendo Store",
  "Canon Store",
  "Bose Store",
  "Microsoft Store",
  "Fitbit Store",
  "LG Store"
];


List<String> returnTimes = [
  "30 Days",
  "14 Days",
  "21 Days",
  "30 Days",
  "14 Days",
  "30 Days",
  "30 Days",
  "21 Days",
  "14 Days",
  "30 Days"
];

List<String> addresses = [
  "1342 Colorado Street, Suite 32 - 92003",
  "2301 Elm Street, Suite 101 - 30303",
  "9876 Main Street, Suite 5 - 60606",
  "555 Pine Avenue, Suite 15 - 90001",
  "789 Maple Drive, Suite 20 - 10001",
  "369 Oak Street, Suite 25 - 20002",
  "456 Birch Lane, Suite 30 - 70007",
  "123 Walnut Road, Suite 12 - 40004",
  "876 Cedar Avenue, Suite 7 - 80008",
  "321 Cherry Lane, Suite 2 - 60006"
];

List<String> prices = [
  '999.99',
  '299.99', 
  '499.99', 
  '1899.99', 
  '199.99', 
  '3799.99', 
  '129.99', 
  '499.99', 
  '229.99', 
  '1599.99' 
];