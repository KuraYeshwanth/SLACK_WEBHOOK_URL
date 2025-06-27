# Fitness Running Training App

[![Coverage Status](https://img.shields.io/badge/coverage-dynamic-brightgreen?style=flat)](https://github.com/<OWNER>/<REPO>/actions/workflows/flutter_ci.yml)

This is a cross-platform mobile application built with Flutter targeting Android and iOS platforms. The app provides features for running training based on Jack Daniels' running formula, workout stats, pace and VDOT calculators, athlete evaluation tests, AI/ML performance analysis, and a coach dashboard for training schedule management.

## Features

- Training calendar to schedule and view workouts
- Workout stats including distance, pace, heart rate, cadence, elevation
- Pace calculator and VDOT calculator
- Event records and personal best tracking
- Athlete evaluation tests (pronation, anatomy tests)
- AI/ML analysis of athlete performance
- Coach dashboard for approving and altering training schedules
- Training schedule generation based on Jack Daniels' running formula
- Weekly training plan with rest, interval, strength, circuit, running, and LSD days

## Getting Started

### Prerequisites

- Flutter SDK installed: https://flutter.dev/docs/get-started/install
- Android Studio or Xcode for platform-specific builds
- Device or emulator for testing

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app on a connected device or emulator

## Project Structure

- `lib/` - Main Flutter source code
- `lib/screens/` - UI screens for different app sections
- `lib/models/` - Data models
- `lib/providers/` - State management providers
- `lib/services/` - Business logic and API integrations
- `assets/` - Images and other assets

## Next Steps

- Implement AI/ML backend for performance analysis
- Integrate with fitness trackers (Google Fit, Apple HealthKit)
- Setup CI/CD pipelines for app deployment

## License

MIT License
