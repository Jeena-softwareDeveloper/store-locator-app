Store Locator App

A Flutter application that helps users locate nearby stores, search for stores by name, and view detailed information about each store. The app integrates with maps, fetches user location, and provides detailed store and product information, making it easier to find stores and the items available in them.

Table of Contents
Features
Screenshots
Tech Stack
Installation
Usage
Database
Contributing
License
Features
Store List Screen: View a list of nearby stores with their name, address, and distance from the user.
Search: Filter the stores by name using a search bar.
Store Details Screen:
View details about the store such as contact information, address, and products available.
Tap to call the store directly using the native phone dialer.
Map Integration: See the store’s location on a map (using Google Maps or flutter_map).
User Location: Automatically fetch the user’s current location and calculate the distance between the user and the stores.
Database Management: Store and retrieve store information locally using sqflite or hive.
Animations: Smooth transitions between screens using animations.
Bonus Features:
Mark stores as favorites and filter to see only your favorite stores.
Support for dark mode.
Screenshots
Home Screen - Store List

Store Details Screen

Map Screen

Tech Stack
Framework: Flutter
Language: Dart
State Management: Provider
Database: sqflite or hive
Map Integration: flutter_map or google_maps_flutter
Location Services: Geolocator
Installation
Prerequisites
Make sure you have Flutter installed. If not, follow the Flutter installation guide.

Clone the Repository
bash
Copy code
git clone https://github.com/your-username/store-locator-app.git
cd store-locator-app
Install Dependencies
bash
Copy code
flutter pub get
Set Up Google Maps API Key
If you are using google_maps_flutter, you need to add your Google Maps API key:

Go to android/app/src/main/AndroidManifest.xml.
Insert your API key inside the <meta-data> tag:
xml
Copy code
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_GOOGLE_MAPS_API_KEY"/>
Run the App
bash
Copy code
flutter run
Usage
View Stores: On the home screen, you'll see a list of nearby stores.
Search: Use the search bar to filter stores by name.
View Store Details: Tap on a store to view its detailed information, including contact details, products, and location.
Map: Tap on "View on Map" to see the store’s location on a map.
Favorite a Store: Mark a store as favorite by tapping the heart icon.
Dark Mode: The app will automatically switch to dark mode if your device is in dark mode.
Database
The app uses sqflite or hive for local data storage.
On startup, the app loads a sample database of 5 stores, each with product details, addresses, and more.
Contributing
Contributions are always welcome! Here's how you can help:

Fork the project.
Create a feature branch (git checkout -b feature/new-feature).
Commit your changes (git commit -m 'Add some feature').
Push to the branch (git push origin feature/new-feature).
Open a pull request.
License
This project is licensed under the MIT License - see the LICENSE file for details.
