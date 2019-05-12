# inject_dart_example

This is Flutter example of using inject.dart package.

Package: https://github.com/google/inject.dart

**Note: This package is not officialy available in Dart Pub.**
**The inject.dart does not support Dagger-like Provider which enable to use dependency cycle somewhere if needed**

## Getting Started

### Basic setup
https://developers.mewssystems.com/dependency-injection-in-flutter/

### Setup Visual Studio Code
#### Exclude `vendor` directory from Dart static analysis
Add following code to `.vscode/settings.json` (Workspace settings)
```json
{
    "dart.analysisExcludedFolders": [
        "vendor"
    ]
}
```

#### Hide generated files from Project Files tree
Add following code to `.vscode/settings.json` (Workspace settings)
```json
{
    "files.exclude": {
        "**/*.inject.*": true
    }
}
```

### .gitignore
We don't need `*.inject.summary` files to build the app. So I prefer to not include them in Git repository.

Add following snippet:
```gitignore
*.inject.summary
```
