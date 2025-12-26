# plant_shop

PlantShop : Plant Marketplace 

## Tech Stack
- Flutter 3.38.5 (stable)
- GetX (State Management)
- Clean Architecture (lightweight)

## Architecture
- GetX Controllers for state
- IndexedStack for bottom navigation state preservation
- Stateless UI components

## Features
- Bottom navigation with 5 tabs
- Scrollable Home page
- Mall page with search & empty state
- Responsive spacing for small screens

## Notes
- No API integration (static assets only)
- Designed for Android & iOS compatibility

## Git Workflow (Simplified GitFlow)

This project follows a simplified GitFlow suitable for small-to-medium Flutter projects.

Branches
- main → stable, runnable version
- develop → integration branch
- feature/* → isolated feature development
- chore/* → setup & cleanup tasks