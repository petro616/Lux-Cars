# Lux Car  

## Overview  
The **Lux Car** project is a Flutter-based mobile application designed to make car buying in Syria easier, cleaner, and more comfortable.  
The app provides a seamless UI and powerful UX for browsing cars categorized by type, with smooth search functionality and detailed listings.  
The backend is built with pure PHP, and the database is hosted on a VPS from Namecheap.  

## Technologies Used  
- **Front-end**: Flutter, Dart  
- **Back-end**: Pure PHP  
- **Database**: VPS hosting on Namecheap  
- **State Management**: Cubit  
- **Networking**: Retrofit  
- **Image Loading**: CachedNetworkImage for efficient image caching and better performance  

## Installation Instructions  
To install and run the apps locally, follow these steps:  

1. Clone the repository:  

   ```bash 
   git clone <git@github.com:petro616/Lux-Cars.git>  
   ```  
3. Navigate to the project directory:  

   ```bash  
   cd Cars  
   ```  
5. Install dependencies:  

   ```bash
   flutter pub get  
   ```  
7. Run the application:  

   ```bash  
   flutter run  
   ```
   
## Usage

### Lux Car (User App)

#### Home Page:
- Browse cars through categories with smooth and clean UI.
- Efficient search functionality for fast car filtering.
- Display of cars carefully selected for user's convenience.

#### Car Details:
- View detailed information and photos of each car.
- Images are cached using CachedNetworkImage for smooth and fast loading.

#### Search and Categories:
- Search by car name or filter by categories seamlessly.

#### UI/UX:
- Designed to provide powerful user experience with smooth navigation and fast performance.

## Unique Features
- **Performance Optimized**: Using CachedNetworkImage to reduce network calls and enhance app speed.
- **Clean Architecture**: App follows Clean Architecture principles for better separation of concerns and scalability.
- **SOLID Principles**: The code is written with SOLID principles to ensure maintainable and extensible logic.
- **Efficient Networking**: Retrofit handles API calls cleanly and effectively.
- **Database Indexing**: Backend uses indexing for faster query performance and scalability..

## Architecture Overview
This project is built using **Clean Architecture**, separating UI, business logic, and data layers for scalability and maintainability.

## Future Improvements
- Publish the app on Google Play Store to reach a wider audience.
- Add new features like user authentication, advanced filtering, and notifications.
- Support multiple languages and improve UX based on user feedback.

## 📸 Screenshots

### 🏎 OnBoarding
![OnBoarding](Cars/assets/screenshoots/photo_2025-05-16_08-10-56.jpg)

### 🏠 Home Page
![Home Page](assets/screenshoots/photo_2025-05-16_08-10-45.jpg)

### 🚘 Car Details Page
![Car Details](assets/screenshoots/photo_2025-05-16_08-11-02.jpg)

### 📂 Categories View
![Categories](assets/screenshoots/photo_2025-05-16_08-10-51.jpg)


## Contributing
Contributions are welcome! If you want to contribute:  
- Fork the repository.  
- Create a new branch for your feature or bug fix.  
- Submit a pull request with a description of your changes.

