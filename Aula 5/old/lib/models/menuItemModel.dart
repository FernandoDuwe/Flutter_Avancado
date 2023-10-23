enum MenuItemType {
  example,
  exercise
}

class MenuItemModel {
  String title = "";
  String subtitle = "";
  String route = "";
  MenuItemType type = MenuItemType.example;

  MenuItemModel(this.title, this.subtitle, this.route, {this.type = MenuItemType.example});

  bool matchFilter(String prSearch, bool prShowingExamples, bool prShowingExercises) {
    if ((!prShowingExamples) && (this.type == MenuItemType.example))
      return false;

    if ((!prShowingExercises) && (this.type == MenuItemType.exercise))
      return false;

    if (this.title.toUpperCase().indexOf(prSearch.toUpperCase()) > -1)
      return true;

    if (this.subtitle.toUpperCase().indexOf(prSearch.toUpperCase()) > -1)
      return true;

    if (this.route.toUpperCase().indexOf(prSearch.toUpperCase()) > -1)
      return true;

    return false;
  }
}