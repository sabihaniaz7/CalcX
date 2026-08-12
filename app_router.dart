import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ── Top-level screens ──────────────────────────────────────────────────────
import '../../features/calculator/screens/calculator_history_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/calculator/screens/calculator_screen.dart';
import '../../features/history/screens/history_screen.dart';
import '../../features/favourites/screens/favourites_screen.dart';
import '../../features/about/screens/about_screen.dart';
import '../../features/splash/screens/onboarding_screen.dart';
import '../../features/splash/screens/splash_screen.dart';

// ── Category list screens ──────────────────────────────────────────────────
import '../../features/category/category_screen.dart';

// ── Scaffold shell ─────────────────────────────────────────────────────────
import '../../shared/layouts/main_scaffold.dart';

// ── Mathematics tools ──────────────────────────────────────────────────────

import '../../features/tools/mathematics/screens/angle_converter_screen.dart';
import '../../features/tools/mathematics/screens/interest_screen.dart';
import '../../features/tools/mathematics/screens/lcm_hcf_screen.dart';
import '../../features/tools/mathematics/screens/percentage_screen.dart';
import '../../features/tools/mathematics/screens/prime_checker_screen.dart';
import '../../features/tools/mathematics/screens/equation_solver_screen.dart';
import '../../features/tools/mathematics/screens/fraction_screen.dart';
import '../../features/tools/mathematics/screens/ratio_screen.dart';
import '../../features/tools/mathematics/screens/roman_numerals_screen.dart';
import '../../features/tools/mathematics/screens/statistics_screen.dart';
import '../../features/tools/mathematics/screens/probability_screen.dart';
import '../../features/tools/mathematics/screens/matrices_screen.dart';
import '../../features/tools/mathematics/screens/sets_screen.dart';
import '../../features/tools/mathematics/screens/permutations_screen.dart';

// ── Physics tools ──────────────────────────────────────────────────────────
import '../../features/tools/mathematics/screens/tignometry_screen.dart';
import '../../features/tools/physics/screens/physics_formula.dart';
import '../../features/tools/physics/screens/velocity_screen.dart';
import '../../features/tools/physics/screens/force_screen.dart';
import '../../features/tools/physics/screens/ohms_law_screen.dart';
import '../../features/tools/physics/screens/energy_screen.dart';
import '../../features/tools/physics/screens/motion_screen.dart';

// ── General tools ──────────────────────────────────────────────────────────

import '../../features/tools/general/screens/periodic_table_screen.dart';
import 'package:calcx/features/tools/general/screens/formula_reference_screen.dart';
import '../../features/tools/general/screens/cpga_calculator_screen.dart';
import '../../features/tools/general/screens/unit_converter_screen.dart';
import '../../features/tools/general/screens/bmi_screen.dart';
import '../../features/tools/general/screens/text_counter_screen.dart';
import '../../features/tools/general/screens/age_calculator_screen.dart';

// ── Computer tools ─────────────────────────────────────────────────
import '../../features/tools/computer/screens/cryptography_screen.dart';
import '../../features/tools/computer/screens/hex_rgb_screen.dart'
    as computer_tools;
import 'package:calcx/features/tools/computer/screens/number_system.dart';
import '../../features/tools/computer/screens/ascii_converter_screen.dart';
import '../../features/tools/computer/screens/bitwise_screen.dart';
import '../../features/tools/computer/screens/data_storage.dart';
import '../../features/tools/computer/screens/morse_screen.dart';

const _hasSeenOnboardingKey = 'has_seen_onboarding';

final appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => SplashScreen(
        onComplete: () {
          final settings = Hive.box('settings');
          final hasSeenOnboarding =
              settings.get(_hasSeenOnboardingKey, defaultValue: false) == true;

          context.go(hasSeenOnboarding ? '/' : '/onboarding');
        },
      ),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnboardingScreen(
        onDone: () async {
          await Hive.box('settings').put(_hasSeenOnboardingKey, true);
          if (!context.mounted) return;
          context.go('/');
        },
      ),
    ),
    GoRoute(
      path: '/calculator',
      builder: (c, s) => const CalculatorScreen(),
      routes: [
        // Nested sub-route: accessible via context.go('/calculator/history')
        GoRoute(
          path: 'history',
          builder: (c, s) => const CalculatorHistoryPage(),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => MainScaffold(child: child),
      routes: [
        // ── Top-level screens ──────────────────────────────────────
        GoRoute(path: '/', builder: (c, s) => const HomeScreen()),
        GoRoute(
          path: '/formulas',
          builder: (c, s) => const FormulaReferenceScreen(),
        ),
        // ── Drawer pages ──────────────────────────────────────────────────
        GoRoute(path: '/history', builder: (c, s) => const HistoryScreen()),
        GoRoute(
          path: '/favourites',
          builder: (c, s) => const FavouritesScreen(),
        ),
        GoRoute(path: '/about', builder: (c, s) => const AboutScreen()),

        //  ════════════════════════════════════════════════════════════════
        // CATEGORY: MATHEMATICS
        // Back from any tool → /category/mathematics
        // ════════════════════════════════════════════════════════════════
        GoRoute(
          path: '/category/mathematics',
          builder: (c, s) => const CategoryScreen(categoryName: 'mathematics'),
          routes: [
            // Math tools nested under /category/mathematics so back works
            GoRoute(path: 'lcm-hcf', builder: (c, s) => const LcmHcfScreen()),
            GoRoute(
              path: 'trigonometry-reference',
              builder: (c, s) => const TrigonometryReferenceScreen(
                toolId: 'trigonometry-reference',
              ),
            ),
            GoRoute(
              path: 'angle-converter',
              builder: (c, s) => const AngleConverterScreen(),
            ),
            GoRoute(
              path: 'roman-numerals',
              builder: (c, s) => const RomanNumeralsScreen(),
            ),
            GoRoute(
              path: 'interest',
              builder: (c, s) => const InterestScreen(),
            ),
            GoRoute(path: 'ratio', builder: (c, s) => const RatioScreen()),
            GoRoute(
              path: 'percentage',
              builder: (c, s) => const PercentageScreen(),
            ),
            GoRoute(
              path: 'prime-checker',
              builder: (c, s) => const PrimeCheckerScreen(),
            ),
            GoRoute(
              path: 'equation-solver',
              builder: (c, s) => const EquationSolverScreen(),
            ),
            GoRoute(
              path: 'fraction',
              builder: (c, s) => const FractionScreen(),
            ),
            GoRoute(
              path: 'statistics',
              builder: (c, s) => const StatisticsScreen(),
            ),
            GoRoute(
              path: 'probability',
              builder: (c, s) => const ProbabilityScreen(),
            ),
            GoRoute(
              path: 'matrices',
              builder: (c, s) => const MatricesScreen(),
            ),
            GoRoute(path: 'sets', builder: (c, s) => const SetsScreen()),
            GoRoute(
              path: 'permutations',
              builder: (c, s) => const PermutationsScreen(),
            ),
          ],
        ),
        // ════════════════════════════════════════════════════════════════
        // CATEGORY: PHYSICS
        // ════════════════════════════════════════════════════════════════
        GoRoute(
          path: '/category/physics',
          builder: (c, s) => const CategoryScreen(categoryName: 'physics'),
          routes: [
            GoRoute(
              path: 'velocity',
              builder: (c, s) => const VelocityScreen(),
            ),
            GoRoute(path: 'force', builder: (c, s) => const ForceScreen()),
            GoRoute(path: 'ohms-law', builder: (c, s) => const OhmsLawScreen()),
            GoRoute(path: 'energy', builder: (c, s) => const EnergyScreen()),
            GoRoute(path: 'motion', builder: (c, s) => const MotionScreen()),
            GoRoute(
              path: 'physics-formulas',
              builder: (c, s) => const PhysicsReferenceScreen(),
            ),
          ],
        ),
        // ════════════════════════════════════════════════════════════════
        // CATEGORY: COMPUTER SCIENCE
        // ════════════════════════════════════════════════════════════════
        GoRoute(
          path: '/category/computer',
          builder: (c, s) => const CategoryScreen(categoryName: 'computer'),
          routes: [
            GoRoute(
              path: 'base-number-converter',
              builder: (c, s) => const NumberSystemScreen(),
            ),
            GoRoute(
              path: 'ascii',
              builder: (c, s) => const AsciiConverterScreen(),
            ),
            GoRoute(
              path: 'data-storage',
              builder: (c, s) => const DataStorageScreen(),
            ),
            GoRoute(path: 'bitwise', builder: (c, s) => const BitwiseScreen()),
            GoRoute(
              path: 'hex-rgb',
              builder: (c, s) => const computer_tools.HexRgbScreen(),
            ),
            GoRoute(path: 'morse', builder: (c, s) => const MorseScreen()),
            GoRoute(
              path: 'cryptography',
              builder: (c, s) => const CryptographyScreen(),
            ),
          ],
        ),
        // ════════════════════════════════════════════════════════════════
        // CATEGORY: GENERAL
        // ════════════════════════════════════════════════════════════════
        GoRoute(
          path: '/category/general',
          builder: (c, s) => const CategoryScreen(categoryName: 'general'),
          routes: [
            GoRoute(
              path: 'cgpa',
              builder: (c, s) => const CgpaCalculatorScreen(),
            ),

            GoRoute(
              path: 'text-counter',
              builder: (c, s) => const TextCounterScreen(),
            ),
            GoRoute(
              path: 'periodic-table',
              builder: (c, s) => const PeriodicTableScreen(),
            ),
            GoRoute(path: 'bmi', builder: (c, s) => const BmiScreen()),
            GoRoute(
              path: 'age-calculator',
              builder: (c, s) => const AgeCalculatorScreen(),
            ),
            GoRoute(
              path: 'unit/:type',
              builder: (c, s) => UnitConverterScreen(
                type: s.pathParameters['type'] ?? 'length',
              ),
            ),
          ],
        ),

        // ── Legacy flat routes → redirect to nested (for go() calls in registry) ─
        GoRoute(
          path: '/tools/math/trigonometry-reference',
          redirect: (_, _) => '/category/mathematics/trigonometry-reference',
        ),
        GoRoute(
          path: '/tools/math/angle-converter',
          redirect: (_, _) => '/category/mathematics/angle-converter',
        ),
        GoRoute(
          path: '/tools/math/lcm-hcf',
          redirect: (_, _) => '/category/mathematics/lcm-hcf',
        ),
        GoRoute(
          path: '/tools/math/percentage',
          redirect: (_, _) => '/category/mathematics/percentage',
        ),
        GoRoute(
          path: '/tools/math/prime-checker',
          redirect: (_, _) => '/category/mathematics/prime-checker',
        ),
        GoRoute(
          path: '/tools/math/equation-solver',
          redirect: (_, _) => '/category/mathematics/equation-solver',
        ),

        GoRoute(
          path: '/tools/math/fraction',
          redirect: (_, _) => '/category/mathematics/fraction',
        ),
        GoRoute(
          path: '/tools/math/statistics',
          redirect: (_, _) => '/category/mathematics/statistics',
        ),
        GoRoute(
          path: '/tools/math/probability',
          redirect: (_, _) => '/category/mathematics/probability',
        ),
        GoRoute(
          path: '/tools/math/sets',
          redirect: (_, _) => '/category/mathematics/sets',
        ),
        GoRoute(
          path: '/tools/math/permutations',
          redirect: (_, _) => '/category/mathematics/permutations',
        ),
        GoRoute(
          path: '/tools/math/permutation',
          redirect: (_, _) => '/category/mathematics/permutations',
        ),

        GoRoute(
          path: '/tools/physics/velocity',
          redirect: (_, _) => '/category/physics/velocity',
        ),
        GoRoute(
          path: '/tools/physics/force',
          redirect: (_, _) => '/category/physics/force',
        ),
        GoRoute(
          path: '/tools/physics/ohms-law',
          redirect: (_, _) => '/category/physics/ohms-law',
        ),
        GoRoute(
          path: '/tools/physics/energy',
          redirect: (_, _) => '/category/physics/energy',
        ),
        GoRoute(
          path: '/tools/physics/motion',
          redirect: (_, _) => '/category/physics/motion',
        ),

        GoRoute(
          path: '/tools/computer/base',
          redirect: (_, _) => '/category/computer/base-number-converter',
        ),
        GoRoute(
          path: '/tools/computer/ascii',
          redirect: (_, _) => '/category/computer/ascii',
        ),
        GoRoute(
          path: '/tools/computer/data-storage',
          redirect: (_, _) => '/category/computer/data-storage',
        ),
        GoRoute(
          path: '/tools/computer/bitwise',
          redirect: (_, _) => '/category/computer/bitwise',
        ),
        GoRoute(
          path: '/tools/computer/hex',
          redirect: (_, _) => '/category/computer/hex',
        ),
        GoRoute(
          path: '/tools/computer/hex-rgb',
          redirect: (_, _) => '/category/computer/hex-rgb',
        ),
        GoRoute(
          path: '/tools/computer/morse',
          redirect: (_, _) => '/category/computer/morse',
        ),
        GoRoute(
          path: '/tools/computer/cryptography',
          redirect: (_, _) => '/category/computer/cryptography',
        ),

        GoRoute(
          path: '/tools/general/cgpa',
          redirect: (_, _) => '/category/general/cgpa',
        ),
        GoRoute(
          path: '/tools/general/text-counter',
          redirect: (_, _) => '/category/general/text-counter',
        ),
        GoRoute(
          path: '/tools/general/periodic-table',
          redirect: (_, _) => '/category/general/periodic-table',
        ),
        GoRoute(
          path: '/tools/general/bmi',
          redirect: (_, _) => '/category/general/bmi',
        ),
        GoRoute(
          path: '/tools/general/age-calculator',
          redirect: (_, _) => '/category/general/age-calculator',
        ),
        GoRoute(
          path: '/tools/unit/:type',
          redirect: (c, s) =>
              '/category/general/unit/${s.pathParameters['type']}',
        ),
      ],
    ),
  ],
);
