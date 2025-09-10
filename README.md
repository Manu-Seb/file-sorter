
# File Sorter CLI

A simple terminal-based file sorting tool written in **Bash**. Organize your files automatically by categories such as Images, Documents, Music, Videos, and Archives. Supports custom extensions and destinations via configuration files.

---

## Features

* Automatically sorts files in a source folder into categorized subfolders.
* Supports custom file extensions defined in `extensions.json`.
* Configurable source and destination folders via `config.conf` or CLI arguments.
* Moves unmatched files into an `Others` folder.
* Simple CLI interface:

  ```bash
  file-sorter --setsource /path/to/source --setdest /path/to/destination
  ```

---

## Prerequisites

* Linux or macOS system with Bash.
* `jq` installed for JSON parsing. Install via:

  ```bash
  sudo apt install jq     # Debian/Ubuntu
  sudo pacman -S jq       # Arch Linux
  brew install jq         # macOS
  ```

---

## Installation

1. Clone the repository:

```bash
git clone <your-repo-url>
cd sorter
```

2. Run the installer:

```bash
chmod +x install.sh
./install.sh
```

3. **Restart your shell** or source your config:

```bash
source ~/.zshrc   # or ~/.bashrc
```

---

## Usage

### Default usage (from config files):

```bash
file-sorter
```

Uses `config.conf` for source and destination folders and `extensions.json` for categories.

### Override source/destination via CLI:

```bash
file-sorter --setsource ~/Downloads --setdest ~/Downloads/Sorted
```

* `--setsource` → path to the folder to sort
* `--setdest` → path to the destination folder

---

## File Structure

```
sorter/
├── config.conf          # Default source and destination
├── extensions.json      # Defines file categories and extensions
├── sorter.sh            # Main sorting script
├── install.sh           # Installs CLI globally
└── README.md
```

---

## Customization

* Edit `extensions.json` to add/remove file types or categories. Example:

```json
{
  "Images": ["jpg", "png", "gif"],
  "Docs": ["pdf", "docx", "txt"],
  "Music": ["mp3", "wav"],
  "Videos": ["mp4", "mkv"],
  "Archives": ["zip", "rar", "tar.gz"]
}
```

* Update `config.conf` to set default source and destination:

```bash
SOURCE=~/Downloads
DEST=~/Downloads/Sorted
```

---

## Contributing

Contributions are welcome!

1. Fork the repository.
2. Create a feature branch.
3. Make your changes.
4. Submit a pull request.

---

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

