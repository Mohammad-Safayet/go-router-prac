# go_router_prac

This is a sample Flutter application that demonstrates how to use `go_router` for handling navigation within the app.

## Overview

This app showcases various screens and features, with each screen demonstrating a different use case for navigation using `go_router`.

## Features

- **Home Screen:** This is the landing screen for the app that uses `go_router`'s `StatefulShellRoute.indexedStack` providing an overview of the app's features and navigation options.
- **Listing Screen:** Shows a list of items, each of which can be clicked and leads to the relevant details screen using dynamic routing with parameter
- **Details Screen:** Provides comprehensive information about a selected item, which is loaded dynamically based on the item's ID that is passed as a parameter.
- **404 Not Found Screen:** A personalized "Not Found" screen to manage unknown routes elegantly.

## Installation
1. **Clone the Repository:** <br />Clone this repository to your local machine using the following command:<br /><br />
    ```bash
    git clone https://github.com/Mohammad-Safayet/go-router-prac.git
    ```
2. **Install Dependencies:**<br />Navigate to the project directory and install the required dependencies:<br /><br />
    ```bash
    cd go-router-prac
    flutter pub get
    ```
3. **Run the App:**<br />Run the app on your preferred device or emulator using the following command:<br /><br />
    ```bash
    flutter pub run
    ```

## Screenshots

<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_one.jpg" alt="Musics list screen" width="200" height="100" />
<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_two.jpg" alt="Utilities list screen" width="200" height="100" />
<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_three.jpg" alt="profile screen" width="200" height="100" />
<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_details_one.jpg" alt="Music details screen" width="200" height="100" />
<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_details_two.jpg" alt="Utility details screen" width="200" height="100" />
<img src="https://github.com/Mohammad-Safayet/go-router-prac/blob/main/screenshots/screen_error.jpg" alt="Error screen" width="200" height="100" />

## Dependencies

- [go_router](https://pub.dev/packages/go_router) - A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.

## Attribution
- [music icons](https://www.flaticon.com/free-icons/music) - Music icons created by Freepik - Flaticon
- [bass icons](https://www.flaticon.com/free-icons/bass) - Bass icons created by Good Ware - Flaticon
