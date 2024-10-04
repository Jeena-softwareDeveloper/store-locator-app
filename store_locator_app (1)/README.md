
# Store Locator App

This is a basic Flutter application that helps users locate nearby stores, view store details, and check product availability.

## Features
- Home screen showing a list of stores.
- Search functionality to find stores by name.
- Store details screen displaying full information and sample products.
- Map screen with store location.
- Local database to store and manage store information using `sqflite`.
- User location services to calculate the distance from stores.

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/store-locator-app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd store-locator-app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies
- `provider`
- `google_maps_flutter`
- `sqflite`
- `geolocator`
- `url_launcher`
