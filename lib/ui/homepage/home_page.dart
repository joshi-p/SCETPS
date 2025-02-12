// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scetps/app_state.dart';
import 'package:scetps/styleguide.dart';
import 'package:scetps/ui/homepage/category_widget.dart';
import 'package:scetps/ui/homepage/home_page_background.dart';
import 'package:scetps/model/category.dart';
// import 'package:scetps/app_state.dart';
import 'package:scetps/model/event.dart';
import "event_widget.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 56,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "IILM UNIVERSITY",
                          style: fadedTextStyle,
                        ),
                        Spacer(),
                        Icon(
                          Icons.person_outline,
                          color: Color(0x99FFFFFF),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "HELLO USER",
                      style: whiteHeadingTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Consumer<AppState>(
                      builder: (context, appState, _) => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            for (final category in categories)
                              CategoryWidget(category: category)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Consumer<AppState>(
                      builder: (context, appState, _) => Column(
                        children: <Widget>[
                          for (final event in events.where((e) => e.categoryIds
                              .contains(appState.selectedCategoryId)))
                            EventWidget(
                              event: event,
                            )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
