import 'package:flutter/material.dart';
import '../models/tool_model.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ToolRegistry {
  ToolRegistry._();

  static List<ToolModel> all = [
    // ── Mathematics ──────────────────────────────────────────────
    ToolModel(
      id: 'trigonometry-reference',
      name: 'Trigonometry Reference',
      description: 'Ratio table and quadrants',
      category: ToolCategory.mathematics,
      icon: Icons.architecture_rounded,
      route: '/category/mathematics/trigonometry-reference',
      isPopular: true,
    ),

    ToolModel(
      id: 'matrices',
      name: 'Matrices Calculator',
      description: 'Perform matrix operations',
      category: ToolCategory.mathematics,
      icon: Icons.grid_4x4_outlined,
      route: '/category/mathematics/matrices',
      isPopular: true,
    ),
    ToolModel(
      id: 'permutation',
      name: 'Permutations and Combinations',
      description: 'Calculate nPr and nCr',
      route: '/category/mathematics/permutations',
      category: ToolCategory.mathematics,
      icon: Icons.alt_route_rounded,
      isPopular: true,
    ),
    ToolModel(
      id: 'sets',
      name: 'Sets Calculator',
      description: 'Set Operations',
      route: '/category/mathematics/sets',
      category: ToolCategory.mathematics,
      icon: Icons.join_inner_rounded,
      isPopular: true,
    ),
    ToolModel(
      id: 'statistics',
      name: 'Statistics Calculator',
      description: 'Mean, median, mode, variance, SD',
      route: '/category/mathematics/statistics',
      category: ToolCategory.mathematics,
      icon: Icons.bar_chart_rounded,
      isPopular: true,
    ),

    ToolModel(
      id: 'probability',
      name: 'Probability',
      description: 'Calculate probability outcomes',
      route: '/category/mathematics/probability',
      category: ToolCategory.mathematics,
      icon: Icons.casino_rounded,
      isPopular: true,
    ),
    ToolModel(
      id: 'angle_converter',
      name: 'Angle Converter',
      description: 'Convert angles between degrees and radians',
      route: '/category/mathematics/angle-converter',
      category: ToolCategory.mathematics,
      icon: Icons.sync,
      isPopular: true,
      isConverter: true,
    ),
    ToolModel(
      id: 'lcm_hcf',
      name: 'LCM & HCF',
      description: 'Find common multiples and factors',
      route: '/category/mathematics/lcm-hcf',
      category: ToolCategory.mathematics,
      icon: Icons.device_hub_rounded,
    ),

    ToolModel(
      id: 'percentage',
      name: 'Percentage',
      description: 'Calculate discounts and growth',
      route: '/category/mathematics/percentage',
      category: ToolCategory.mathematics,
      icon: Icons.percent_rounded,
      isPopular: true,
    ),

    ToolModel(
      id: 'prime_checker',
      name: 'Prime Number Checker',
      description: 'Check if a number is prime',
      route: '/category/mathematics/prime-checker',
      category: ToolCategory.mathematics,
      icon: Icons.onetwothree_outlined,
    ),

    ToolModel(
      id: 'equation_solver',
      name: 'Equation Solver',
      description: 'Solve linear and quadratic equations',
      route: '/category/mathematics/equation-solver',
      category: ToolCategory.mathematics,
      icon: Symbols.function,
      isPopular: true,
    ),
    // Permutation and Combination

    // Roman Numerals
    ToolModel(
      id: 'roman_numerals',
      name: 'Roman Numerals',
      description: 'Convert Roman and Decimal numbers',
      route: '/category/mathematics/roman-numerals',
      category: ToolCategory.mathematics,
      icon: Symbols.one_x_mobiledata,
      isConverter: true,
    ),

    ToolModel(
      id: 'fraction_calc',
      name: 'Fraction Calculator',
      description: 'Calculate fraction operations',
      route: '/category/mathematics/fraction',
      category: ToolCategory.mathematics,
      icon: Icons.pie_chart,
    ),

    // Ratio
    ToolModel(
      id: 'ratio',
      name: 'Ratio Calculator',
      description: 'Simplify, compare, and scale ratios',
      route: '/category/mathematics/ratio',
      category: ToolCategory.mathematics,
      icon: Icons.balance_rounded,
    ),
    // Interest
    ToolModel(
      id: 'interest',
      name: 'Interest Calculator',
      description: 'Calculate simple and compound interest',
      route: '/category/mathematics/interest',
      category: ToolCategory.mathematics,
      icon: Icons.trending_up_rounded,
    ),
    // ── ============================Physics ───────────────────────────────────────────────────
    ToolModel(
      id: 'physics_formula',
      name: 'Physics Reference',
      description: 'Definitions, formulas, SI units, and constants',
      route: '/category/physics/physics-formulas',
      category: ToolCategory.physics,
      icon: Symbols.note_stack,
      isPopular: true,
    ),
    ToolModel(
      id: 'velocity',
      name: 'Velocity Calculator',
      description: 'Calculate speed, distance, and time',
      route: '/category/physics/velocity',
      category: ToolCategory.physics,
      icon: Icons.speed_rounded,
    ),

    ToolModel(
      id: 'force',
      name: 'Force Calculator',
      description: 'Calculate force using Newton\'s laws',
      route: '/category/physics/force',
      category: ToolCategory.physics,
      icon: Icons.fitness_center_rounded,
    ),

    ToolModel(
      id: 'ohms_law',
      name: "Ohm's Law",
      description: 'Voltage, current, and resistance',
      route: '/category/physics/ohms-law',
      category: ToolCategory.physics,
      icon: Icons.electrical_services_rounded,
    ),

    ToolModel(
      id: 'energy',
      name: 'Energy Calculator',
      description: 'Kinetic energy, Potential energy, and work',
      route: '/category/physics/energy',
      category: ToolCategory.physics,
      icon: Symbols.electric_bolt,
    ),

    ToolModel(
      id: 'motion',
      name: 'Motion Equations',
      description:
          'Calculate final velocity, displacement, and velocity squared',
      route: '/category/physics/motion',
      category: ToolCategory.physics,
      icon: Icons.directions_run_rounded,
    ),
    // ── Computer Science ──────────────────────────────────────────
    ToolModel(
      id: 'base_number_converter',
      name: 'Base Converter',
      description: 'Convert binary, decimal, octal, and hexadecimal',
      route: '/category/computer/base-number-converter',
      category: ToolCategory.computer,
      icon: Icons.swap_horiz_rounded,
      isPopular: true,
      isConverter: true,
    ),

    ToolModel(
      id: 'ascii_converter',
      name: 'ASCII Converter',
      description: 'Convert text and ASCII values',
      route: '/category/computer/ascii',
      category: ToolCategory.computer,
      icon: Icons.terminal_rounded,
      isConverter: true,
    ),

    ToolModel(
      id: 'data_storage',
      name: 'Data Storage Converter',
      description: 'Bytes, KB, MB, GB, TB',
      route: '/category/computer/data-storage',
      category: ToolCategory.computer,
      icon: Icons.storage_rounded,
      isConverter: true,
    ),

    ToolModel(
      id: 'bitwise_calc',
      name: 'Bitwise Calculator',
      description: 'AND, OR, XOR, NOT, shifts',
      route: '/category/computer/bitwise',
      category: ToolCategory.computer,
      icon: Icons.memory_rounded,
      isPopular: true,
    ),
    ToolModel(
      id: 'computer_hex_rgb',
      name: 'HEX & RGB Converter',
      description: 'Convert HEX and RGB color codes',
      route: '/category/computer/hex-rgb',
      category: ToolCategory.computer,
      icon: Icons.color_lens_rounded,
      isConverter: true,
    ),
    ToolModel(
      id: 'morse_code',
      name: 'Morse Code',
      description: 'Convert text to and from Morse code',
      route: '/category/computer/morse',
      category: ToolCategory.computer,
      icon: Icons.sms_rounded,
      isConverter: true,
    ),
    ToolModel(
      id: 'cryptography',
      name: 'Cryptography',
      description: 'Encrypt, decrypt, encode, and decode text',
      route: '/category/computer/cryptography',
      category: ToolCategory.computer,
      icon: Icons.enhanced_encryption_rounded,
      isPopular: true,
    ),

    // ── General ───────────────────────────────────────────────────
    // CGPA Calculator
    ToolModel(
      id: 'cgpa_calculator',
      name: 'CGPA Calculator',
      description: 'Calculate GPA and CGPA',
      route: '/category/general/cgpa',
      category: ToolCategory.general,
      icon: Icons.school_rounded,
      isPopular: true,
    ),

    ToolModel(
      id: 'text_counter',
      name: 'Text Counter',
      description: 'Count, analyse & transform text',
      route: '/category/general/text-counter',
      category: ToolCategory.general,
      icon: Icons.text_fields_rounded,
    ),
    ToolModel(
      id: 'periodic_table',
      name: 'Periodic Table',
      description: 'Explore chemical elements and their properties',
      route: '/category/general/periodic-table',
      category: ToolCategory.general,
      icon: Icons.co2,
      isPopular: true,
    ),
    ToolModel(
      id: 'unit_length',
      name: 'Length Converter',
      description: 'km, miles, m, cm, ft, in',
      route: '/category/general/unit/length',
      category: ToolCategory.general,
      icon: Icons.straighten_rounded,
      isConverter: true,
    ),

    ToolModel(
      id: 'unit_weight',
      name: 'Weight Converter',
      description: 'kg, lbs, g, oz, tons',
      route: '/category/general/unit/weight',
      category: ToolCategory.general,
      icon: Icons.monitor_weight_outlined,
      isConverter: true,
    ),

    ToolModel(
      id: 'unit_temperature',
      name: 'Temperature Converter',
      description: '°C, °F, Kelvin',
      route: '/category/general/unit/temperature',
      category: ToolCategory.general,
      icon: Icons.thermostat_rounded,
      isConverter: true,
    ),

    ToolModel(
      id: 'unit_area',
      name: 'Area Converter',
      description: 'm², km², hectare, acre',
      route: '/category/general/unit/area',
      category: ToolCategory.general,
      icon: Icons.square_foot_rounded,
      isConverter: true,
    ),

    ToolModel(
      id: 'unit_speed',
      name: 'Speed Converter',
      description: 'km/h, mph, m/s, knots',
      route: '/category/general/unit/speed',
      category: ToolCategory.general,
      icon: Symbols.speed_2,
      isConverter: true,
    ),
    ToolModel(
      id: 'age_calculator',
      name: 'Age Calculator',
      description: 'Calculate age from birth date',
      route: '/category/general/age-calculator',
      category: ToolCategory.general,
      icon: Icons.cake_rounded,
    ),
    ToolModel(
      id: 'bmi',
      name: 'BMI Calculator',
      description: 'Calculate body mass index',
      route: '/category/general/bmi',
      category: ToolCategory.general,
      icon: Icons.accessibility_new_rounded,
    ),
  ];

  static List<ToolModel> byCategory(ToolCategory cat) =>
      all.where((t) => t.category == cat).toList();

  static List<ToolModel> get converters =>
      all.where((t) => t.isConverter).toList();

  static const Set<String> _nonCalculatorIds = {
    'cryptography',
    'periodic_table',
    'physics_formula',
    'text_counter',
  };

  static List<ToolModel> get calculators => all
      .where((t) => !t.isConverter && !_nonCalculatorIds.contains(t.id))
      .toList();

  static List<ToolModel> get popular => all.where((t) => t.isPopular).toList();

  static ToolModel? byId(String id) {
    try {
      return all.firstWhere((t) => t.id == id);
    } catch (_) {
      return null;
    }
  }

  static List<ToolModel> search(String query) {
    final q = query.toLowerCase().trim();
    if (q.isEmpty) return [];
    return all
        .where(
          (t) =>
              t.name.toLowerCase().contains(q) ||
              t.description.toLowerCase().contains(q) ||
              t.category.label.toLowerCase().contains(q),
        )
        .toList();
  }
}
