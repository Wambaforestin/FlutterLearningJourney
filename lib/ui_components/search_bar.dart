import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/ui_components/expanded_class.dart';

class SearchBarr extends StatefulWidget {
  const SearchBarr({super.key});

  @override
  State<SearchBarr> createState() => _SearchBarrState();
}

class _SearchBarrState extends State<SearchBarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        title: const Text('Search Bar...'),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Search Programming Languages'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyExpandedClass(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

// Creating a class to handle the search
class DataSearch extends SearchDelegate<String> {
  final List<String> searchListElements = [
    'Flutter',
    'Dart',
    'Android',
    'iOS',
    'Java',
    'Kotlin',
    'Swift',
    'Objective-C',
    'Python',
    'Ruby',
    'JavaScript',
    'PHP',
    'HTML',
    'CSS',
    'C++',
    'C#',
    'C',
    'Rust',
  ];

  final List<String> recentSearchList = [
    'Flutter',
    'Dart',
    'Android',
    'iOS',
  ];

  // Clearing the search bar and closing the search bar
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  // Creating a back button to close the search bar
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  // Displaying the suggestions based on the search query entered
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var language in searchListElements) {
      if (language.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(language);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // Showing the suggestions or recent searches if no match is found
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var language in searchListElements) {
      if (language.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(language);
      }
    }

    final suggestions = matchQuery.isEmpty ? recentSearchList : matchQuery;

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        var result = suggestions[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            query = result;
            showResults(context);
          },
        );
      },
    );
  }
}
