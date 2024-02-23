## Team Points Monitoring and Control System

This project is designed to facilitate easy points monitoring in a team-versus-team gaming environment. It integrates with a chat API to receive trigger values that update the points for each team. The system stores these values locally and supports automatic scene switching and replay triggers based on the game's progress. It is built to handle a maximum points cap, after which a team is declared the winner of the event.
Features

    Points Tracking: Automatically updates and tracks team points in real-time.
    Scene Switching: Changes scenes based on which team scores, enhancing the viewing experience.
    Replay Triggers: Initiates replays of significant moments through remote commands.
    Local Storage: Maintains a local record of the points and events during the game.
    Points Cap: Supports setting a maximum points threshold for declaring a winner.

## Prerequisites
Streamlabels or ChatApi 
Before you begin, ensure you have met the following requirements:
- setup either a local system for the script files as seen on the scorecheck.vbs or try to connect it to an existing trigger.
- Microsoft Visual Studio installed on your system.
- Basic understanding of Visual Basic programming.
- Access to the chat API you plan to integrate with.

## Setup and Installation
- Run it with any stream-chat system that allows for trigger listeners like [SAMMI](https://sammi.solutions/)
- Look into https://www.youtube.com/watch?v=ZIdMMhHGHU8 for more info
- You'll have to connect the events based on conditions. [I used Nutty's app](https://github.com/nuttylmao/NOOBS-CMDR) to setup the timnings into executable scripts allowing me to - open them through sammi.
    

## Contributing
Contributions to this project are welcome. Please adhere to the following steps for contributing:

    Fork the repository.
    Create a new branch for your feature (git checkout -b feature/YourFeatureName).
    Commit your changes (git commit -am 'Add some YourFeatureName').
    Push to the branch (git push origin feature/YourFeatureName).
    Open a pull request.
