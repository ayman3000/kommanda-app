class GuideContent {
  static const String getStarted = '''
# 🚀 Get Started
Welcome to **Kommanda**, the dual-pane file manager for macOS inspired by classic productivity tools, rebuilt for the modern era with AI and visual power.

### One Page, Two Panes
- The window is split into two independent **Panes** (Left & Right).
- The **Active Pane** (highlighted) is the source for your actions.
- Most operations use the **Inactive Pane** as the destination folder.

---
**If you like Kommanda, Donate...**
[![Support me on Ko-fi](resource:assets/images/kofi_badge.png)](https://ko-fi.com/W7W61DDVO5)
''';

  static const String navigation = '''
# 🧭 Navigation
### Path Bar & Location
- The path bar is collapsible. Click to edit, or use segments to jump up.
- Use the `..` row to navigate to the parent folder.
- **Recent Folders**: Access your last 10 visited folders via `Shift + Cmd + R`.

### View Modes
- **List View**: Detailed information with sortable headers.
- **Thumbnail Grid**: Visual layout ideal for images and media.
''';

  static const String fileOperations = '''
# 📁 File Operations
### Common Actions
- **F5 / Copy**: Duplicate to the opposite pane.
- **F6 / Move**: Move to the opposite pane.
- **F2 / Rename**: Rename the selected item.
- **F7 / New Folder**: Create a directory in the active pane.
- **F8 / Delete**: Move to Trash.

### Background Tasks
Large copy and move operations run in the background with a visual progress indicator.
''';

  static const String imagePdf = '''
# 🖼️ Image & PDF
### Image Tools
- **Resize**: Quick presets (50%, 25%, HD).
- **Convert**: Switch between PNG, JPEG, WebP, and HEIC.
- **Compress**: Optimized quality presets for web.

### PDF Operations
- **Annotate**: Add highlights, notes, and strikethroughs directly in the preview.
- **Save**: Changes are written back to the file instantly with `Cmd + S`.
''';

  static const String aiAssistant = '''
# 🤖 AI Assistant
Kommanda's AI agent is context-aware—it knows your current folder and selection.

### What to Ask
- *"Organize these screenshots into folders by date"*
- *"Summarize the selected PDF"*
- *"Create a Flutter project structure here"*
''';

  static const String visionModel = '''
# 👁️ Vision Model
The Vision model interacts with your images and PDFs using natural language.

### Usage
- Select an image and ask: *"What's in this photo?"*
- Scanned documents? Ask: *"Extract the text from this invoice"*
''';

  static const String searchFilter = '''
# 🔍 Search & Filter
### Search Modes
- **Literal (`abc`)**: Exact text match.
- **Wildcard (`*?`)**: Pattern matching (`*.dart`).
- **Regex (`.*`)**: Power-user regular expressions.

### Filter Chips
Quickly narrow down results to Folders, Images, Docs, Code, or Archives.
''';

  static const String shortcuts = '''
# ⌨️ Shortcuts
| Shortcut | Action |
| :--- | :--- |
| **Tab** | Switch active pane focus |
| **Space** | Quick Look preview |
| **Ctrl + U** | Swap left and right panels |
| **Cmd + T** | Open Terminal in current folder |
| **Shift + Cmd + M** | Open this User Guide |
| **Cmd + S** | Save changes in Preview |
''';

  static const String aboutAuthor = '''
# 👨‍💻 About the Author
**Kommanda** was designed and developed by **Ayman Moustafa**, a software engineer passionate about building high-performance, beautiful, and AI-powered tools for the modern desktop.

### Mission
To bridge the gap between classic file management efficiency and modern AI capabilities, providing a seamless experience for power users and creative professionals.

### Support the Project
If you like Kommanda, Donate...

[![Support me on Ko-fi](resource:assets/images/kofi_badge.png)](https://ko-fi.com/W7W61DDVO5)
''';

  static const sections = [
    ('Get Started', 'assets/icons/rocket.svg', getStarted),
    ('Navigation', 'assets/icons/compass.svg', navigation),
    ('File Operations', 'assets/icons/folder.svg', fileOperations),
    ('Image & PDF', 'assets/icons/image.svg', imagePdf),
    ('AI Assistant (Trial)', 'assets/icons/robot.svg', aiAssistant),
    ('Vision Model (PLANNED)', 'assets/icons/eye.svg', visionModel),
    ('Search & Filter', 'assets/icons/search.svg', searchFilter),
    ('Shortcuts', 'assets/icons/keyboard.svg', shortcuts),
    ('About Author', 'assets/icons/user.svg', aboutAuthor),
  ];
}
