# LHT_Task
Task for the LHT interview - A. Avila. 

Remarks:

This is a conceptual simple design that would need many improvements.

- The code could be more structured using diverse files to set specific functionalities instead of placing everything on the main window. 
- The generation of each row with buttons and progress bars could be programmed with a function called 4 times with specific parameters like
  the ranges and values of the progress bars to keep a cleaner code.
- C++ implementations could be used to link parameters and other aspects to other software modules. 
- The buttons could replace the + and - symbols for a more visual approach with icons (similar to a car control panel).
- The progress bars should be changed to add a set of these options combined (or not): numerical values (to show the angle of the seat for
  example), visual animations to represent the status (representing a 2D view of the current status of the seat or part of the seat).
- The round button designs should have a more robust approach and a better and fixed design.
- The alignment and other aspects should be redesigned according to the final use of the application (size of the screen, stretch properties, etc).
- The load and save seat function is simple and implements a simple approach for just one case based on QSettings. For a multi-status saving system I would probably
  use a YAML, JSON, or XML file to store all the positions and load all of them maybe with a small pop-up window when pressing "load" showing for example,
  3 predefined positions. A database may be too much for such a small application for just one seat. Depending on the specific application another approach might be
  used (I am not a senior dev so I guess that would be provided by the software architect as a requirement in a real task).
- In this case I did not set it up to fetch the last seat values automatically when the app is turned off and on again. This could be easily changed,
  but I will just assume that when the system is turned off and turned back on the seat turns back to the default position.

In summary, this is a conceptual first approach to the task. I like to develop a working prototype and then improve it step by step once the initial
prototype works, following traditional programming workflow guidelines. 
