# Routes

![Version](https://img.shields.io/badge/version-1.3.2-blue?style=for-the-badge) ![WoW Version](https://img.shields.io/badge/WoW-3.3.5a-orange?style=for-the-badge)
[![Platform](https://img.shields.io/badge/platform-Project%20Ascension-green?style=for-the-badge)](https://ascension.gg/)
[![Docs](https://img.shields.io/badge/docs-GitHub%20Pages-blue?style=for-the-badge)](https://Xurkon.github.io/Routes/)
![Total Downloads](https://img.shields.io/github/downloads/Xurkon/Routes/total?style=for-the-badge&label=TOTAL%20DOWNLOADS&color=e67e22)
![Latest Release](https://img.shields.io/github/downloads/Xurkon/Routes/latest/total?style=for-the-badge&label=LATEST%20RELEASE&color=3498db)
[![Patreon](https://img.shields.io/badge/Patreon-Support-orange?style=for-the-badge&logo=patreon)](https://patreon.com/Xurkon)
[![PayPal](https://img.shields.io/badge/PayPal-Donate-blue?style=for-the-badge&logo=paypal)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=kancerous@gmail.com)

> **Optimized for Project Ascension** - Draw routes on your minimap and world map for efficient farming!

## Description

Routes allows you to draw lines on the World Map and Minimap linking nodes in an efficient path from gathering addons (GatherMate2, Gatherer, HandyNotes). It includes a built-in TSP (Traveling Salesman Problem) solver to calculate optimal farming routes!

## Features

* **Route Drawing** - Draw connected routes between gathering nodes on minimap and world map
* **TSP Optimizer** - Built-in traveling salesman algorithm finds the shortest path through your nodes
* **Multiple Data Sources** - Works with GatherMate2, Gatherer, HandyNotes, and Cartographer
* **Taboo Regions** - Mark areas to exclude from routes
* **FarmHud Integration** - Routes display correctly on FarmHud HUD overlay
* **Customizable Appearance** - Adjust line width, colors, and opacity
* **Auto-Show** - Automatically show routes when entering zones
* **Minimap Rotation** - Full support for rotating minimap

## Addon Compatibility

Works seamlessly with these gathering addons:

* **GatherMate2** - Recommended for gathering node data
* **Gatherer** - Alternative gathering data source
* **HandyNotes** - Point of interest data
* **Cartographer** - Legacy map addon support
* **FarmHud** - Routes display on HUD overlay
* **TomTom** - Waypoint integration

## Commands

| Command | Description |
|---------|-------------|
| `/routes` | Open Routes configuration panel |
| `/routes show` | Show route on current zone |
| `/routes hide` | Hide route on current zone |

## Installation

1. Download the latest release
2. Extract to `Interface/AddOns/Routes`
3. Enable in character select addons menu
4. Configure via `/routes` command

## Creating Your First Route

1. Install a gathering addon (GatherMate2 recommended)
2. Gather some nodes to populate the database
3. Open Routes config: `/routes`
4. Create a new route for your zone
5. Add node types (Mining, Herbalism, etc.)
6. Click "Cluster" to group nearby nodes
7. Click "Optimize" to find the best path

## Changelog

### v1.3.2 - 2025-10-31
- Fixed minimap rotation support

### v1.3.1 - 2025-10-30
- Modified to support Ascension WoW client
- Removed libraries (provided by client)
- Modified for proper minimap zoom scale
- Changed calculation for draw coordinates to use player centered formula
- Changed formula for drawing points to properly use `Minimap:GetViewRadius()` output

### v1.3.0 - 2010-10-18
- Added support for GatherMate2
- Updated Interface to 40000
- Fixed errors caused by patch 4.0.1 changes
- Reduced memory usage (~13kb less per route)
- Fixed route creation with unselected node types
- Registered /routes slash command for non-English users

## Authors

* **Grum** - Original author
* **Xinhuan** - Major updates and maintenance
* **Xan** - Minimap view radius implementation
* **BanditTech** - Ascension client compatibility

## Disclaimer

> World of Warcraft© and Blizzard Entertainment© are all trademarks or registered trademarks of Blizzard Entertainment in the United States and/or other countries. These terms and all related materials, logos, and images are copyright © Blizzard Entertainment.
