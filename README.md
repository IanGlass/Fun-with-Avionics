# Fun-with-Avionics

The goal of the project is to provide automated control, where the desired orientation and height are the input parameters, of a RC helicopter using the LM3S1968 development kit. Automated height control is achieved with a PID system reading height as an analogue voltage and orientation control reading quadrature encoding. Helicopter main and tail rotor control is achieved with PWM outputs.

The software relies heavily on foreground tasks. The attached document has pseudocode style descriptions of the code.