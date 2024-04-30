# Dart Logger Package

A lightweight and customizable logging package for Dart applications.

## Features

- **Customizable Log Levels:** Supports various log levels like info, debug, warning, and error.
- **Colorized Output:** Enhances readability with ANSI colored log messages.
- **Detailed Logging:** Option to include detailed logging with file locations and line numbers.
- **Dynamic Configuration:** Supports setting up package prefix and base path dynamically.

## Getting Started

### Basic Usage

Import the package in your Dart file:
```dart
import 'package:dartlog/dartlog.dart';
```
Initialize the logger:

```dart
Logger.initialize(
  packagePrefix: 'your_package_prefix',
  basePath: 'your_base_path',
  detailedLogging: true // or false
);
```

### Advanced Configuration

You can customize the logging behavior by setting the `packagePrefix`, `basePath`, and `detailedLogging` during initialization. This allows for more precise log messages, especially in larger projects.

#### Enhanced VSCode Integration

- **Base Path (`basePath`):** This setting helps in mapping the file paths in the logs to the actual files in your project. When you click on a file path in the log within VSCode, it will directly jump to the respective file and line in your code, enhancing the debugging experience.
  
- **Package Prefix (`packagePrefix`):** This setting is used to filter and display log entries relevant to your project. It enables VSCode to recognize and link stack trace paths in the log to the corresponding files in your project. This feature is especially useful for quickly navigating to the source of an error or warning directly from the log output.

These settings make the logger not only a powerful tool for recording and viewing log messages but also integrate seamlessly with VSCode, making debugging and code navigation much more efficient.

