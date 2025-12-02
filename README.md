
# PHP Development Server Launcher

A Windows batch script that automatically detects your PHP installation and launches PHP's built-in development server for any project folder.

## Features

- **Auto-detection**: Automatically finds PHP folders matching the `php-*` pattern in the script's directory
- **Drag-and-drop**: Simple drag-and-drop interface for selecting project folders
- **Built-in server**: Launches PHP's built-in development server on `localhost:8000`
- **Version flexibility**: Works with any PHP version folder structure

## Requirements

- Windows operating system
- PHP installation in a folder matching the pattern `php-*` (e.g., `php-8.2.0`, `php-7.4.33`)
- PHP folder must be in the same directory as the batch script

## Installation

1. Place the batch script in a directory alongside your PHP folder(s)
2. Ensure your PHP folder follows the naming pattern `php-*`

```

your-directory/
├── start-php-server.bat
├── php-8.2.0/
│   └── php.exe
└── your-project/

```

## Usage

1. Drag and drop your project folder onto the batch file
2. The server will start automatically on `http://localhost:8000`
3. Access your application in a web browser at the displayed URL
4. Press `Ctrl+C` in the command window to stop the server

## How It Works

| Step | Action |
|------|--------|
| 1 | Changes to the script's directory |
| 2 | Searches for folders matching `php-*` pattern (newest first) |
| 3 | Validates that a PHP folder was found |
| 4 | Validates that a project folder was provided |
| 5 | Launches `php.exe -S localhost:8000` with the project folder as document root |

## Error Messages

- **"No PHP folder found matching php-*"**: No PHP installation detected in the script's directory
- **"Drag and drop a folder onto this batch file"**: No project folder was provided

## Example

```


# Folder structure

C:\dev\
├── start-server.bat
├── php-8.2.12\
└── my-website\

# Action: Drag "my-website" onto start-server.bat

# Result: Server runs at http://localhost:8000

```

## Notes

- If multiple PHP folders exist, the script uses the one with the highest alphabetical sort order
- The server is accessible only from your local machine (localhost)
- Default port is 8000 (modify the script to change this)

