# App

An all-in-one offline calculator and converter application built with Flutter, designed for students, engineers, developers, and everyday users. It consolidates mathematical tools, scientific utilities, physics calculators, statistics tools, computer science converters, and unit conversion systems into a single organized platform.

<div align="center">
  <a href="https://calcx-nexappra.vercel.app/" target="_blank">
    <img src="https://img.shields.io/badge/▶%20View%20Live%20App-2D3748?style=for-the-badge&logo=android&logoColor=A8D5A2&labelColor=2D3748" alt="View Live App" />
  </a>
</div>

---

## Overview

It is designed around a simple principle: users should not need to download multiple separate apps for common academic and engineering tasks. The application works entirely offline, stores all history and preferences locally on device, and provides step-by-step breakdowns for mathematical tools to support learning.

---

## Features

- Fully offline — no internet connection required
- Standard and scientific calculator with history logging
- Formula Guide with 200+ formulas
- Step-by-step solution breakdowns for all math tools
- Favourites system to save frequently used tools
- Calculation history with grouped timeline view
- Search across all tools from the home screen
- Dark and light theme with persistent preference
- Swipe navigation between categories
- Responsive layout for phones and tablets
- Poppins typeface throughout

---

## Tool Categories

### Mathematics
- LCM and HCF Calculator
- Matrices
- Sets
- Trigonometry
- Roman and Decimal Converter
- Percentage Calculator (three modes: X% of Y, X out of Y, percentage change)
- Prime Number Checker
- Equation Solver (linear and quadratic)
- Fraction Calculator (add, subtract, multiply, divide)
- Statistics Calculator (mean, median, mode, variance, standard deviation, range)
- Probability Calculator
- Permutations & Statistics
- Ratio
- Interest

### Physics
- Velocity Calculator (find speed, distance, or time)
- Force Calculator (Newton's second law)
- Ohm's Law (find voltage, current, or resistance)
- Energy Calculator (kinetic and potential energy)
- Motion Equations (SUVAT)
- Physics Reference Sheet - Formulas, definitions, constants, SI units & dimensions

### Computer Science
- Base Converter (decimal, binary, octal, hexadecimal)
- ASCII Converter (character to code and code to character)
- Data Storage Converter (bit through petabyte)
- Bitwise Calculator (AND, OR, XOR, NOT, bit shifts)
- Cryptography
- Mose Converter

### General
- Length Converter
- Weight Converter
- Temperature Converter (Celsius, Fahrenheit, Kelvin)
- Area Converter
- Speed Converter
- Periodic Table
- Age Calculator
- Text Counter & Transform
- CGPA Calculator (multi-semester with grade dropdown)
- BMI Calculator (metric and imperial)

### Calculator
- Standard calculator with expression history
- Scientific calculator with trigonometric, logarithmic, hyperbolic, and algebraic functions
- 2nd shift for inverse functions (sin⁻¹, cos⁻¹, tan⁻¹, sinh⁻¹, cosh⁻¹, tanh⁻¹, log₂, eˣ, 10ˣ)

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart |
| State Management | Flutter Riverpod |
| Local Storage | Hive + Hive Flutter |
| Navigation | go_router |
| Typography | Poppins (self-hosted) |
| Utilities | math_expressions, uuid, intl |
| Code Generation | build_runner, hive_generator, riverpod_generator |

---

## Project Structure

```
lib/
├── main.dart
├── core/
│   ├── constants/
│   │   ├── app_colors.dart          # Design tokens and color palette
│   │   ├── app_constants.dart       # String constants and route names
│   │   ├── app_dimens.dart          # Spacing, radius, breakpoints
│   │   └── app_text_styles.dart     # Poppins text style definitions
│   ├── extensions/
│   │   └── theme_extensions.dart    # BuildContext extensions for theme access
│   ├── theme/
│   │   ├── app_theme.dart           # Light and dark ThemeData
│   │   └── theme_provider.dart      # Riverpod notifier with Hive persistence
│   └── utils/
│       ├── app_router.dart          # go_router configuration with nested routes
│       └── hive_init.dart           # Hive box registration and initialization
├── data/
│   ├── models/
│   │   ├── tool_model.dart          # ToolModel, FavouriteEntry, HistoryEntry
│   │   └── tool_model.g.dart        # Hive type adapters (generated)
│   ├── providers/
│   │   └── history_provider.dart    # Riverpod notifiers for history and favourites
│   └── repositories/
│       └── tool_registry.dart       # Central registry of all tools
├── features/
│   ├── home/screens/                # Home screen with chip filter
│   ├── calculator/screens/          # Standard and scientific calculator
│   ├── category/screens/            # Category list page for each section
│   ├── history/screens/             # History with today/yesterday grouping
│   ├── favourites/screens/          # Saved tools grid
│   ├── about/screens/               # App information
│   └── tools/
│       ├── mathematics/screens/     # All maths tool screens
│       ├── physics/screens/         # All physics tool screens
│       ├── computer/screens/        # All computer science tool screens
│       ├── unit_converter/screens/  # Unit converter (parametric by type)
│       └── general/screens/         # CGPA calculator, formula reference
└── shared/
    ├── layouts/
    │   └── main_scaffold.dart       # Bottom nav, drawer, swipe gesture handler
    └── widgets/
        ├── base_tool_screen.dart    # Abstract base for all tool screens
        └── common_widgets.dart      # Reusable UI components
```

---


## Developed By

Sabiha Niaz — Flutter Developer  
GitHub: [sabihaniaz7](https://github.com/sabihaniaz7)

