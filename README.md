Traffic Light System using 8051 Microcontroller (Assembly Code)
This project implements a basic traffic light control system using an 8051 microcontroller in assembly language. The system manages the traffic lights for two directions, switching between green, yellow (orange), and red lights. The timing for each light is controlled by using delay loops.

Key Components of the Code:


Initialization:The program initializes the traffic light system using the MOV instruction to set the output values for the ports (P0, P1, and P2). Each port controls the traffic lights for a specific direction.

Green Light Phase: The GREEN subroutine is responsible for turning on the green light. It sets the appropriate port (e.g., P1 for direction 1) to indicate green, then waits for a specific duration (e.g., 5 seconds) before turning it off.

Yellow (Orange) Light Phase:The ORANGE subroutine turns on the yellow light (orange in the code). It operates for a shorter time than the green light (e.g., 3 seconds) and is controlled by the same delay mechanism.

Red Light Phase:After the green and orange lights, the traffic lights are turned to red by clearing specific ports, stopping the flow of traffic.

Timing Control:The SECOND and DELAY1 subroutines implement timing delays using the 8051's timers. These delays are used to control how long each light stays on.

Traffic Cycle:The program continuously loops through the entire traffic light sequence using the SJMP (short jump) instruction to restart the cycle.

Seven Segment Display:The code also includes logic for controlling a seven-segment display (using port P3), where each digit is shown to indicate the time left for each light phase.
