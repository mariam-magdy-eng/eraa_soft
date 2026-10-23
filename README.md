 # EraaSoft Tasks - Duck Duck Goose (Codewars Kata)

This repository contains the solution for the *Duck Duck Goose* challenge from Codewars, completed as part of EraaSoft tasks.

## Problem Description
The objective of *Duck Duck Goose* is to walk in a circle, tapping on each player's head until one is chosen. Given an array of Player objects and a position (goose), return the name of the chosen Player.

## Solution (Dart)

```dart
String duckDuckGoose(List<dynamic> players, int goose) {
  int index = (goose - 1) % players.length;
  return players[index].name;
}
```
