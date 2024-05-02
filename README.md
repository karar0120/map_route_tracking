# Implementing Live Route Tracking with Google Maps

A simple Flutter application for implementing live route tracking with google maps.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)

## Introduction

Welcome to the Users App! The objective of this task is to develop a Flutter application that draws a live route between a data source and a specified destination on Google Maps. The application should also calculate the distance and duration of the route using the provided Google Maps API key.

## Features
- Implement a Flutter application that integrates with Google Maps to display a live route.
- Draw the route on the map between a data source and a specified destination.
- Utilize the provided Google Maps API key for map integration and route calculation.
- Calculate the distance and duration of the route.
- Ensure that the route updates in real-time as the user's location changes.
- Display the route information, including distance and duration, on the user interface.

## Getting Started

### Prerequisites

Make sure you have Flutter and Dart installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/karar0120/map_route_tracking.git
    cd users-app-flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

    .
    ├── core                       # For all common and core files.
    │   ├── error                  # contains all Exceptions and Failures classes
    │   ├── presentation           # Common presentation files
    |   │   └── blocs              # Common blocs
    |   │   └── pages              # Core pages
    |   │   └── widgets            # Common widgets
    │   └── route                  # Routes for navigation
    │   └── theme                  # Theme data
    │   └── usecases               # Common usecases
    |
    ├── data                       # Data Files of Feature 1
    │   ├── datasources            # DataSources Abstract Files and Implementations
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── models                 # Models for data
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Implementation Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    ├── domain                     # Domain
    │   ├── entities               # Entities For Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── usecases               # Usecases of Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Abstract Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    └── presentation               # Presentation files
        ├── blocs                  # Blocs
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        ├── pages                  # Pages
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        └── widgets                # Widgets
            └── feature            # Feature 1 (for exp : Todo Feature)
                └── sub-feat.      # Sub feature

## Architecture

This app uses [***Clean Architecture by Robert C Martin***]

<img src="https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>

Image Source : [ResoCoder](https://resocoder.com)

## Branches

    .
    ├── master                       # Contains the latest release
           ├── dev                   # Contains the latest development
                ├── feature1         # feature 1 created from dev
                ├── feature2         # feature 2 created from dev
                ├── feature3         # feature 3 created from dev
                ├── bugFix1          # bugfix 1 created from dev
                ├── bugFix2          # bugfix 1 created from dev
                ├── docChange1       # docChange 1 created from dev
                ├── docChange1       # docChange 2 created from dev

## Map:

- Implement a Flutter application that integrates with Google Maps to display a live route.
- Draw the route on the map between a data source and a specified destination.
- Utilize the provided Google Maps API key for map integration and route calculation.
- Calculate the distance and duration of the route.
- Ensure that the route updates in real-time as the user's location changes.
- Display the route information, including distance and duration, on the user interface.

# :iphone: Screens
![Screenshot_1714667174](https://github.com/karar0120/map_route_tracking/assets/92108624/64892c9a-4a04-40cf-9746-0de5972d47a0)
![Screenshot_1714667178](https://github.com/karar0120/map_route_tracking/assets/92108624/1dbc6a66-54a8-4778-ac7d-b65ee13b2cb2)
![Screenshot_1714667156](https://github.com/karar0120/map_route_tracking/assets/92108624/d72bc04b-a7b3-4e9d-87d4-cca55881fd3f)


