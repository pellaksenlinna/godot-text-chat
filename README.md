# TextChat -addon

## Purpose

This addon includes a custom TextChat node.

It is based on [this addon](https://github.com/KeilainMan/ConsoleAddon) made by [@KeilainMan](https://github.com/KeilainMan).

**This README is not up-to-date** as **this repo is a fork** and **I'm not yet planning to write a new, accurate README**.

## Features

[x] Send & receive chat messages
[x] Supports commands
[x] Customizable
[ ] Private chat
[ ] Built-in networking support via MultiplayerSynchronizer
[x] Text History

## Installation

[Install via Godot AssetLib](https://godotengine.org/asset-library/asset/2946) and enable plugin in project settings. (NOTE

See [Installing a plugin](https://docs.godotengine.org/en/stable/tutorials/plugins/editor/installing_plugins.html#installing-a-plugin) from the Godot docs for further assistance.

## How to use

Add the "ConsoleAndTextchat" node to your scene tree. Adjust positioning and size in the scene.


### Printing messages to the console

To print messages use the `node.print_message(text: String)` method. Insert the string you want to be printed.
You can customize the message using different colors and text formatting or add a timestamp. To see how you
customize your message look in the demo and demo2 scenes for examples.

### Commands

#### Creating commands

To create commands use the `node.register_command(command_name: String, function: Callable, arguments: bool = true)` method.
Enter a name and the method/function to be called upon entering the command into the console. The `arguments` argument describes
wether the callback method has arguments attached.

#### Calling commands

Calling commands through the console is simple. Every command starts with "/" followed by the command itself.
Additionally, every argument is entered with a space inbetween: "/say_hello_to player_one playert_wo".
The entered arguments are given to the method that was registered to a given comment as an array of Strings `["player_one", "player_two"]`.

### Build in commands

- help\
  Displays all registered commands.

- toggle_console\
  Used to toggle the console. The console can also be toggled using the "K" key.

- clear\
  Used to clear the console of all text.

### Controls

The console supports navigating command history using Shift + Arrow keys.\
_If anyone knows how to simplify this to just the Arrow key, notify me. Currently it clashes with build in `LineEdit` controls_

- `Shift + Up Arrow`\
  Navigate to the previous command.

- `Shift + Down Arrow`\
  Navigate to the next command.

Others:

- `k`\
  Toggle console window.

- `Enter`\
  Grab focus of the `text_input_line` to insert `text`

### Export Properties

- Vector2 `Minimum Size`\
  Describes the minimum_size of the console window.

- Theme `Text Input Line Default Theme`\
  Add a theme to style the console window.

- bool `Override Theme Colors`\
  `true`; If `true` `History Preview Color` will override the colors set in the theme.

- Color `History Preview Color`\
  `Color Salmon`; A color to highlight the `text` in history mode.

- bool `Disable Text Input Line`\
  `false`; Disables the `text_input_line`.

- bool `Disable Key Enter Focus`\
  `false`; Disables the control to grab focus on `Enter` pressed.

### Methods

- void `print_message(text: String)`\
  Main method to print a message to the console/textchat. The `text` string can be customized using the different text formatting methods.
  Text formatting can be achieved with bbcode.
- void `register_command(command_name: String, function: Callable, arguments: bool = true)`\
  Register a command to be used through the console. The `command_name` is written into the console.
  The `function` is a Callable that is called when the `command_name` is entered into the console.
  If the `function` has no arguments set `arguments` to `false`.

- void `delete_command(command_name: String)`\
  Deletes a registered command.

- void `clear_console()`\
  Deletes all entered `text`.

- String `timestamp()`\
  Return the current system time in the form [h:min].

- String `col(color, text: String)`\
  To color a `text` insert `color` as a `Color` type or as a string that represents a html/hex color code in the form `#xxxxxx`.

- String `bold(text: String)`\
  To print a `text` in bold.

- String `italic(text: String)`\
  To print a `text` in italic.

- String `underline(text: String)`\
  To print a underlined `text`.

- String `crossed(text: String)`\
  To print a crossed `text`.
