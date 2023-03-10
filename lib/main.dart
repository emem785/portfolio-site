import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_site/routing/route.gr.dart';
import 'package:portfolio_site/sections/header_section.dart';
import 'package:portfolio_site/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

import 'sections/contact_section.dart';
import 'sections/intro_section.dart';
import 'sections/potrait_section.dart';
import 'sections/skills_section.dart';
import 'sections/summary_section.dart';
import 'sections/works_section.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: PortfolioTheme.instance.theme,
      builder: (context, child) {
        return Center(
          child: ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1400, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
          ),
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? 40
                  : 250,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const HeaderSection(),
                const Gap(80),
                ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  children: const [
                    ResponsiveRowColumnItem(child: IntroSection()),
                    ResponsiveRowColumnItem(child: Gap(64)),
                    ResponsiveRowColumnItem(child: PotraitSection()),
                  ],
                ),
                const Gap(80),
                const SummarySection(),
                const Gap(32),
                const SkillsSection(),
                const Gap(32),
                const WorksSection(),
                const Gap(64),
                const ContactSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
