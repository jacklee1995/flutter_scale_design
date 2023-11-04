# Changelog

All notable changes will be documented in this file.

## [0.0.4] - 20231104

Fix the size failure error of IconBtn component, and unify the original width and height attributes into size attributes.

## [0.0.2] - 2023-11-03

### Added

- Added `scaleFont` function for scaling font size based on screen width.
- `fontSize` and `height` parameters in `T` and `TSpan` classes are now scaled by `scaleFont` function.
- Added `TextBtn`, `OutlinedBtn`, `FloatingActionBtn` components.
- Improved `IconBtn`.

## [0.0.1] - 2023-10-03

### Added

- Added basic tools such as `Scale`, `scaleHeight`, `scaleWidth`, `perWidth`, `perHeight`.
- Added `T` class, which extends `Text` class, for creating text.
- Added `TSpan` class, which extends `TextSpan` class, for creating rich text.
- Added `ElevatedBtn`, `IconBtn`, `ScrollableIconsCard` components.
