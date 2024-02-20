# LHT_Task
Task for the LHT interview - A. Avila. 

Remarks:

This is a conceptual simple design that would need many improvements.

- The code could be more structured using diverse files to set specific functionalities instead of placing everything on the main window. 
- The generation of each row with buttons and progress bars could be programmed with a function called 4 times with specific parameters like
  the ranges and values of the progress bars and other paramaters to keep a cleaner code.
- The buttons could replace the + and - symbols for a more visual approach with icons (similar to a car control panel).
- The progress bars should be changed to add a set of these options combined (or not): numerical values (to show the angle of the seat for
  example), visual animations to represent the status (representing a 2D view of the current status of the seat or part of the seat).
- The buttons design should have a more robust approach and better and fixed design.
- The alignment and other aspects should be redesigned according to the final use for the application (size of the screen, stretch properties, etc).
- The load and save seat function is simple and implements a simple approach for just one case. For a multi status saving system I would probably
- use a yaml or XML file to store all the positions and load all of them maybe with a small pop up window when pressing "load" showing for example,
  3 predefined positions.

In summary, this is a conceptual first approach to the task. I like to develop a working prototype and then improve it step by step once the initial
prototype works, following traditional programming workflow guidelines. 
