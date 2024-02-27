Final_Code_Group-3_subsystem-2_Alberto_Montemiglio

The codes in this folder are relative to the optimisation of 
the ferry hull proposed to sustitute the Hammersmith Bridge.



Information on the code:

The one written with Grasshopper and Python is a completely parametric code. 
Every part of the 3D model generation, FEA analysis, Holtrop& Mennen Method 
can be changed through altering parameters, and the whole model will automatically 
update and calculate new objective values.
Although Rhinoceros 3D, Grasshopper and Python communicate natively, there is no native 
communication between those three and MATLAB. Therefore, the communication between the 
softwares is achieved by excange of text files. MATLAB writes the variables value to 
a .csv file, Grasshopper waits for it, reads it and then deletes it. It performs all 
its calculation and then outputs, in a designated folder, the output of its calculations. 
Matlab waits for this file, reads and deletes it. Then a new iteration starts. 
This is how the grasshopper_link function works in MATLAB.



Required:

   - Python 3
   - Softwares:
	- Rhinoceros 3D 6
	- Grasshopper
	- Anemone (Free Grasshopper Plugin)
	- Karamba 3D (Paid Grasshopper Plugin)
   - Matlab Plugins:
	- Global Optimization Toolbox
	- Multi-objective optimization algorithm for expensive-to-evaluate function
		available from: https://github.com/Eric-Bradford/TS-EMO

Instructions:

1. Install all the required softwares, plugins and toolboxes
2. In the matlab files, change the paths to a suitable path in your machine.
3. Repeat step 2 for the python components in the Grasshopper definition
4. If not enabled, enable the timeer in Grasshopper and make sure it is set to 500ms
5. Run the main.m Matlab file. There is 1 main.m for each folder.


Performance and OS:

Running Time: Every cycle of simulation takes about 5-10 seconds on Macbook Pro 16" 2019
OS: Windows 10
Processor: Intel Core i7-8850H



