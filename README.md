# 8051-Board-Bring-Up
In the Embedded System Design course, I embarked on an immersive journey through the domain of embedded systems. This experience was characterized by the execution of critical engineering tasks, application of embedded programming concepts, and deployment of system design techniques.

## Lab 1- initiated my exploration with the fundamental setup of a development board utilizing the 8051 and ARM processors. This involved:
•	Utilizing ASM51 assembler and Emily52 simulator to write, test, and debug assembly code for the 8051 processor, emphasizing low-level programming proficiency.
•	Designing a development board featuring a power-on reset circuit and a crystal oscillator, laying the groundwork for system stability and timing precision.
•	Employing WinCUPL/WinSim for Atmel AT16V8C SPLD design, introducing me to programmable logic design and simulation for custom logic solutions.

## Lab 2-expanded the complexity of my project by integrating additional hardware components and delving deeper into software development:
•	Adding decode logic and NVRAM (as an EPROM substitute) for non-volatile code storage, enhancing my understanding of memory interfaces and mapping in embedded systems.
•	Implementing a status LED to provide visual feedback for system states and operations, which required manipulation of GPIO pins through assembly programming.
•	Writing assembly programs to interact with NVRAM and perform user I/O operations, further refining my assembly language skills.
•	Learning to use timers and Interrupt Service Routines (ISRs) in assembly, introducing me to the concepts of time-based operations and interrupt-driven programming.

## Lab 3-focused on user interface and memory management through the addition of a serial EEPROM and an LCD:
•	Implementing a bit-banged interface for the serial EEPROM, demonstrating my capability to manually control data transmission over GPIO pins without dedicated communication hardware.
•	Developing device drivers in C for an LCD with a memory-mapped I/O interface, applying advanced C programming techniques such as pointers and memory management.
•	Creating a user interface for interacting with the EEPROM and LCD, showcasing my ability to design and implement user-centric software solutions.

## Lab 4-represented the culmination of my learning experience, emphasizing complex device integration and embedded application development:
•	Writing device drivers for both EEPROM and LCD in C, accessible through function calls, and integrating these components into a cohesive system.
•	Utilizing the STM32F4 Discovery board to develop applications, where I engaged with peripheral configuration registers directly in C to manipulate system clocks, GPIOs, and interrupt vectors, thereby gaining a deeper understanding of microcontroller hardware abstraction layers.
•	Employing I2C and SPI protocols for peripheral communication, showcasing my adeptness in serial communication interfaces and protocol implementation.
•	Integrating an LCD display as a memory-mapped peripheral, which involved configuring data and control lines to interact with the LCD using custom software routines, demonstrating an understanding of both hardware interfacing and software control mechanisms.
