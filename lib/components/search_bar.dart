import 'package:checkbox/screens/student_analytics/student_analytics_screen.dart';
import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate<String> {
  final regNo = [
    "19bcs001",
    "19bcs002",
    "19bcs003",
    "19bcs004",
    "19bcs005",
    "19bcs006",
    "19bcs007",
    "19bcs008",
    "19bcs009",
    "19bcs010",
    "19bcs011",
    "19bcs012",
    "19bcs013",
    "19bcs014",
    "19bcs015",
    "19bcs016",
    "19bcs017",
    "19bcs018",
    "19bcs019",
    "19bcs020",
    "19bcs021",
    "19bcs022",
    "19bcs023",
    "19bcs024",
    "19bcs025",
    "19bcs026",
    "19bcs027",
    "19bcs028",
    "19bcs029",
    "19bcs030",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of appbar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //show some result based on the selection
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList =
        regNo.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.pushNamed(context, StudentAnalytics.routeName);
        },
        leading: Icon(Icons.person),
        title: Text(suggestionList[index]),
      ),
      itemCount: suggestionList.length,
    );
  }
}
