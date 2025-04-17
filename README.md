# PokéDex

A modern iOS app built with SwiftUI that serves as a comprehensive Pokémon encyclopedia. Browse, search, and discover detailed information about your favorite Pokémon.

## Features

- **Clean SwiftUI Interface**: Modern, responsive UI built entirely with SwiftUI
- **Pokémon List**: Browse through all Pokémon with smooth scrolling and lazy loading
- **Detailed Information**: View comprehensive stats, abilities, types, and more for each Pokémon
- **Search Functionality**: Find Pokémon quickly by name
- **Type Colors**: Visual type indicators with appropriate colors for each Pokémon type
- **Stat Visualization**: Graphical representation of Pokémon stats
- **API Integration**: Fetches data from the PokéAPI

## Screenshots

<div style="display: flex; justify-content: space-between;">
    <img src="https://raw.githubusercontent.com/emiripek/PokeDex/refs/heads/main/Simulator%20Screenshot%20-%20iPhone%2011%20-%202025-04-17%20at%2017.30.09.png" width="30%" alt="Home Screen">
    <img src="https://raw.githubusercontent.com/emiripek/PokeDex/refs/heads/main/Simulator%20Screenshot%20-%20iPhone%2011%20-%202025-04-17%20at%2017.30.18.png" width="30%" alt="Home Screen">
    <img src="https://raw.githubusercontent.com/emiripek/PokeDex/refs/heads/main/Simulator%20Screenshot%20-%20iPhone%2011%20-%202025-04-17%20at%2017.30.25.png" width="30%" alt="Detail Screen">
</div>

## Technologies Used

- **SwiftUI**: For building the UI components
- **Combine**: For handling asynchronous events
- **MVVM Architecture**: For separation of concerns
- **Async/Await**: For modern Swift concurrency
- **URLSession**: For API calls
- **Swift Decodable**: For JSON parsing

## Getting Started

### Prerequisites

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

### Installation

1. Clone the repository:
```bash
git clone https://github.com/emiripek/PokeDex.git
```

2. Open the project in Xcode:
```bash
cd PokeDex
open PokeDex.xcodeproj
```

3. Build and run the application on your simulator or device.

## Project Structure

The app follows MVVM architecture with these key components:

- **Views**: SwiftUI views that make up the user interface
- **Models**: Data structures for Pokémon information
- **ViewModels**: Business logic and data transformation
- **Services**: API communication and data fetching

## API Reference

This app uses the [PokéAPI](https://pokeapi.co/), a free RESTful Pokémon API.

## Future Enhancements

- Advanced filtering by type, region, or other attributes
- Dark/light mode toggle
- Evolution chains visualization

## Contributing

Contributions are welcome! Feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- [PokéAPI](https://pokeapi.co/) for providing the Pokémon data
- Nintendo, Game Freak, and The Pokémon Company for Pokémon content
