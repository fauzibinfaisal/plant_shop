# plant_shop

PlantShop : Plant Marketplace 

## Screenshot
<img width="250" height="700" alt="Simulator Screenshot - iPhone 15 - 2025-12-26 at 10 56 24" src="https://github.com/user-attachments/assets/1768d476-e494-4ab4-acc4-8f259e21f9b9" />
<img width="250" height="700" alt="Simulator Screenshot - iPhone 15 - 2025-12-26 at 10 56 46" src="https://github.com/user-attachments/assets/613bb3c5-c5e4-4ed8-823d-97b4dc801a03" />
<img width="250" height="700" alt="Simulator Screenshot - iPhone 15 - 2025-12-26 at 10 57 19" src="https://github.com/user-attachments/assets/3e609d5d-b1ab-4270-a0fa-219a5dcb3760" />


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
