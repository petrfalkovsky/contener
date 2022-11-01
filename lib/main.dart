import 'package:contenter/widgets/my_proposals.dart';
import 'package:flutter/material.dart';

import 'style/colors.dart' as style_colors;
import 'style/buttons.dart' as style_buttons;
import 'style/fonts.dart' as style_fonts;

import 'package:contenter/data_structs/profile.dart';

import 'package:contenter/widgets/base_page.dart';
import 'widgets/marketplace.dart';
// ignore: unused_import
import 'widgets/long_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contenter',
      theme: ThemeData(
        colorScheme: style_colors.colorScheme,
        backgroundColor: style_colors.background,
        scaffoldBackgroundColor: style_colors.background,
        fontFamily: 'Agrandir',
        textTheme: TextTheme(
          //display
          headlineLarge: style_fonts.headlineLarge,
          headlineMedium: style_fonts.headlineMedium,
          headlineSmall: style_fonts.headlineSmall,
          titleLarge: style_fonts.titleH1,
          titleMedium: style_fonts.titleH3,
          titleSmall: style_fonts.titleH4,
          bodyLarge: style_fonts.bodyLarge,
          bodyMedium: style_fonts.bodyMedium,
          bodySmall: style_fonts.bodySmall,
          labelLarge: style_fonts.labelLarge,
          labelMedium: style_fonts.labelMedium,
          labelSmall: style_fonts.labelSmall,
        ),
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: style_buttons.primary),
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: style_buttons.outlinedPrimary),
        textButtonTheme: TextButtonThemeData(style: style_buttons.text),
      ),
      home: const MainPage(),
    );
  }
}

class StylePage extends StatelessWidget {
  const StylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text('test'),
              const SizedBox(height: 16),
              style_buttons.PrimaryButton(
                  child: const Text('Primary'), onPressed: () {}),
              const SizedBox(height: 16),
              style_buttons.SecondaryButton(
                  child: const Text('Secondary'), onPressed: () {}),
              const SizedBox(height: 16),
              style_buttons.RejectButton(
                  child: const Text('Reject'), onPressed: () {}),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NavigationPage();
            }));
          },
          tooltip: 'Navigation',
          child: const Icon(Icons.add),
        ));
  }
}

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64),
        child: Center(
          child: Column(
            children: [
              const Text('test123'),
              style_buttons.PrimaryButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StylePage();
                  }));
                },
                child: const Text('Style'),
              ),
              TextButton(
                child: const Text('Login'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
              ),
              TextButton(
                child: const Text('Welcome'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WelcomePage();
                  }));
                },
              ),
              TextButton(
                child: const Text('FirstProfileSettings'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FirstProfileSettingsPage();
                  }));
                },
              ),
              TextButton(
                child: const Text('Main'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainPage();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(64),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 64),
              Text(
                'Marketplace for content creation',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.merge(const TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 128),
              Text(
                'Login to',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.merge(const TextStyle(fontSize: 22)),
              ),
              Text(
                'Contenter.Club',
                style: Theme.of(context).textTheme.bodyMedium?.merge(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 48),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'Your email address',
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'Your password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                  child: const Text('Forgot password'),
                  onPressed: () {
                    debugPrint('button pressed');
                  }),
              const SizedBox(height: 20),
              Row(children: [
                Expanded(
                  child: TextButton(
                    style: style_buttons.primary,
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
              ]),
              //Text(widget.title),
              //Text('$_counter'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NavigationPage();
          }));
        },
        tooltip: 'Navigation',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(64),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 64),
                Text(
                  'Welcome to',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.merge(const TextStyle(fontSize: 24)),
                ),
                Text(
                  'Contenter Club',
                  style: Theme.of(context).textTheme.bodyMedium?.merge(
                      const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 18),
                Text(
                  'Get paid for what you love to create',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.merge(const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 18),
                Image.asset('assets/images/welcome.png'),
                const SizedBox(height: 18),
                Row(children: [
                  Expanded(
                    child: TextButton(
                      style: style_buttons.primary,
                      onPressed: () {},
                      child: const Text('Continue'),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NavigationPage();
            }));
          },
          tooltip: 'Navigation',
          child: const Icon(Icons.add),
        ));
  }
}

class FirstProfileSettingsPage extends StatelessWidget {
  const FirstProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(64),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 64),
                Text(
                  'Welcome to',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.merge(const TextStyle(fontSize: 24)),
                ),
                Text(
                  'Contenter Club',
                  style: Theme.of(context).textTheme.bodyMedium?.merge(
                      const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 90),
                Text(
                  'Before we start - please introduce',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.merge(const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 90),
                Row(children: [
                  Image.asset(
                    'assets/images/welcome.png',
                    height: 72,
                    width: 72,
                  ),
                  Expanded(
                    child: TextButton(
                      style: style_buttons.secondary,
                      onPressed: () {},
                      child: const Text('Upload photo'),
                    ),
                  ),
                  TextButton(
                    style: style_buttons.secondary,
                    onPressed: () {},
                    child: const Icon(
                      Icons.delete,
                      color: style_colors.negative,
                    ),
                  ),
                ]),
                const SizedBox(height: 18),
                Row(children: [
                  Expanded(
                    child: TextButton(
                      style: style_buttons.primary,
                      onPressed: () {},
                      child: const Text('Continue'),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NavigationPage();
            }));
          },
          tooltip: 'Navigation',
          child: const Icon(Icons.add),
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final profile = ProfileData();

  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: style_colors.gray03,
        body: BasePageWidget(
          profile: profile,
          child: SizedBox(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    onTap: (index) {
                      _changeTab(index);
                    },
                    labelStyle: const TextStyle(fontWeight: FontWeight.w900),
                    unselectedLabelStyle: const TextStyle(),
                    indicator: const BoxDecoration(),
                    tabs: const [
                      Tab(
                          child: Text('Marketplace',
                              style: TextStyle(
                                  color: style_colors.black, fontSize: 16))),
                      Tab(
                          child: Text('My proposals',
                              style: TextStyle(
                                  color: style_colors.black, fontSize: 16))),
                    ],
                  ),
                  Builder(builder: (_) {
                    if (_selectedTab == 0) {
                      return const MarketplaceWidget();
                    } else if (_selectedTab == 1) {
                      return const MyProposalsWidget();
                    } else {
                      throw Exception('Wrong tab index');
                    }
                  }),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const NavigationPage();
            }));
          },
          tooltip: 'Navigation',
          child: const Icon(Icons.add),
        ));
  }
}
