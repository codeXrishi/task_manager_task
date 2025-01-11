
# Task Management App

A modern Flutter app to manage your daily tasks with a clean and intuitive design. This app uses the Hive database for local data storage and GetX for state management.

# App Overview

The Task Management App allows users to efficiently manage their daily tasks with features such as adding, editing, deleting, marking tasks as complete, and organizing tasks by priority. The app also supports light and dark themes, providing a pleasant user experience.


## Installation

1. Clone the repository:

```bash
  git clone https://github.com/your-username/task-management-app.git
```

2. Navigate to the project directory:
```bash
  cd task-management-app
```

3. Install dependencies: Run the following command to fetch the necessary packages:

```bash
  flutter pub get
```

4. Run the app:
Connect your device or emulator and execute:

```bash
  flutter run
```

5. Hive Setup:
Ensure you’ve set up Hive correctly. Run the app once to initialize Hive and create necessary database files.


    
## Key Features

Task List:
- Displays all tasks in a scrollable list.
- Includes task name, due date, and priority with a visual indicator.

Add New Task:
- Allows users to add tasks with:
    - Name (required)
    - Due date (required)
    - Priority (High, Medium, Low)

- Stored locally using the Hive database.

Edit Task:
- Modify task details, including name, due date, and priority.

Mark as Complete:
- Tasks can be marked as completed via a checkbox.
- Completed tasks are visually differentiated.

Delete Task:
- Users can delete tasks with a single tap.

Priority Management:
- Each task is color-coded based on priority:
 - High: Red
 - Medium: Orange
 - Low: Green

Responsive Design:
- Works seamlessly on different screen sizes and resolutions.



