# Changelog

## v1.3.3
**2026-05-03**

### Bug Fixes
- **[Fix — FarmHud Compatibility]** Fixed `SetZoom` error when FarmHud is active. The minimap zoom level is now properly validated before calling `SetZoom`, preventing taint and script errors on servers with FarmHud integration.

### Documentation
- Added latest release download badge to README
- Updated PayPal donation link to PayPal.me format
- Unified download badge format across all project READMEs

### Housekeeping
- Removed `Routes_backup_1.3.2.zip` from repository
- Added `.gitignore` patterns for `*.zip`, `*.bak`, `*.orig`, `*~`
- Added `.gitattributes` with export-ignore for `docs/` and `*.md`

## v1.3.2
**2025-10-31**

BanditTech:
- Fixed minimap rotation support.

## v1.3.1
**2025-10-30**

BanditTech:
- Modified to support Ascension wow client.
- Removed libraries as they are provided in client.
- Modified for use of proper minimap zoom scale.
- Changed calculation for draw coordinates to use player centered formula.
- Changed formula for drawing points to properly use Minimap:GetViewRadius() output.

Xan:
- Implemented Minimap:GetViewRadius() usage.

## v1.3.0
**2010-10-18**

Xinhuan:
- Add support for GatherMate2.
- Update Interface to 40000, add GatherMate2 as optionaldeps.
- Fix up errors caused by patch 4.0.1 changes to professions and skills. Add Archaeology to the node types.
- Significantly reduce memory usage of Routes. Roughly 13kb less per route so if you have say 50 routes, that's 650kb less. This update has no effect on CPU usage or FPS.
- Fix a long standing obscure bug where a route would be created with node types that aren't selected.
- Register the /routes slash command for non-English users too.

Erik Broes:
- Normalized 'check' for Cartographer_Waypoints and made it more 'Carbonite-taint-proof'
- 33000 != 30300
