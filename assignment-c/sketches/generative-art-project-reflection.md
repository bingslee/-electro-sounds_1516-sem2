#Assignment-c

#####Why i like the Project

Figure 1.(refer to /pic)

The project/visualization that I chose consist of a concept of lines moving as an arc through its different phases which seemingly adds a repetitive wave like pattern. There is a line that connects to the linear form of this arc and the 0 point. This sketch takes into account the relation between the circle and wave. Showcasing that they are actually the same in terms of phase. I also like the use of the function sin() as there is a certain repetitiveness in a motion that can result in complex variations.  The perspectives of how two things are actually the same but crafted in a different like intrigues me. Figure 2. Figure 3. 
This simple concept also allows for expansion. I did a modification with it in the form of straight lines. These lines move at increasing speeds relative to each other but because of the usage of a sin() function, they repeat themselves in a phase like way. Also, because of their difference in speed, they phase out soon and create complex but repetitive patterns which would otherwise be unimaginable. 
#####How the Project works
The main element in the project, the line works by using framecount as a counter to increase its distance from the original point. This line’s length and position is controlled by sin() being multiplied by radians. Since the position and length is multiplied by sin(), the line returns to its original distance once it reaches the end of the sin cycle. 