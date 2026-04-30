# Flutter Clean Architecture with MVI

This is a sample project demonstrating clean architecture and MVI(Model View Intent) design pattern using a feature first approach. I'm using a free gaming api to list games and get game details. I'm using the Freezed package to create model entity and Riverpod to capture user intent.

## Getting Started

To run this project you'll need to get a key from RAWG api: `https://rawg.io/apidocs`.
1. In the project create an `env` folder and add a file named `key.json`.
2. Enter the following code and add the key obtained from RAWG website.
```json
{
  "gameApi": "ENTER_YOUR_KEY_HERE"
}
 ```
3. Next in VSCode press `CTRL+F5` to run the project.

## Work in progress

- [X] Lay out the foundation of the project (design pattern and architecture)
- [X] Created the game search sample screen (feature)
- [X] Created the game details sample screen (feature)
- [ ] Link the remaining missing values from the repository (REST api) 
- [ ] Inspect, polish and refactor some of the widget and the algorithm
- [ ] Build unit tests, widget tests and golden tests.
- [ ] Setup Github action to run tests.