Project Title: Team Points Monitoring and Control System
Description

This project is designed to facilitate easy points monitoring in a team-versus-team gaming environment. It integrates with a chat API to receive trigger values that update the points for each team. The system stores these values locally and supports automatic scene switching and replay triggers based on the game's progress. It is built to handle a maximum points cap, after which a team is declared the winner of the event.
Features

    Points Tracking: Automatically updates and tracks team points in real-time.
    Scene Switching: Changes scenes based on which team scores, enhancing the viewing experience.
    Replay Triggers: Initiates replays of significant moments through remote commands.
    Local Storage: Maintains a local record of the points and events during the game.
    Points Cap: Supports setting a maximum points threshold for declaring a winner.

Prerequisites
Streamlabels or ChatApi 
Before you begin, ensure you have met the following requirements:

    Microsoft Visual Studio installed on your system.
    Basic understanding of Visual Basic programming.
    Access to the chat API you plan to integrate with.

Setup and Installation

    Clone the repository: Clone this project to your local machine using Visual Studio's Git integration or by downloading the project files directly.
    Install dependencies: Ensure all necessary libraries and dependencies specified in the project are installed. This may include packages for interacting with the chosen chat API.
    Configure the chat API: Update the configuration files with your chat API credentials and endpoint information.
    Set points cap and other settings: Customize the maximum points cap and other relevant settings in the configuration file.

Usage

    Start the project: Open the project in Visual Studio and run the application.
    Monitoring: The system will automatically monitor the chat for trigger values and update the points accordingly.
    Scene Switching and Replays: Configure scene switchers and replay triggers as per your requirements. The system will handle these based on the incoming triggers and the current state of the game.

Contributing

Contributions to this project are welcome. Please adhere to the following steps for contributing:

    Fork the repository.
    Create a new branch for your feature (git checkout -b feature/YourFeatureName).
    Commit your changes (git commit -am 'Add some YourFeatureName').
    Push to the branch (git push origin feature/YourFeatureName).
    Open a pull request.

License
This project is licensed under the MIT License
