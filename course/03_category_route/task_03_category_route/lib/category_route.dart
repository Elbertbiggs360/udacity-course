// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:task_03_category_route/category.dart';

// TODO: Define any constants
final _fontSize = 30.0;
final _elevation = 0.0;
final _categoryIcon = Icons.cake;

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    final _generateCategories = List.generate(
      _baseColors.length,
        (i) => Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: _categoryIcon,
        )
    );

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: new ListView(
        children: _generateCategories,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
    );

    final appBar = AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.white,
          fontSize: _fontSize,
        ),
      ),
      elevation: _elevation,
      centerTitle: true,
      backgroundColor: Colors.green[800],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
