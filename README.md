# Computational Optimisation of Ferry boat for Transport for London

> Uni Project | Automatic optimisation pipeline to design ferry boat for Transport for London.
> The codes in this folder are relative to the optimisation of the ferry hull proposed to sustitute the Hammersmith Bridge.



### Information on the code:

The one written with Grasshopper and Python is a completely parametric code. 
Every part of the 3D model generation, FEA analysis, Holtrop & Mennen Method can be changed by altering parameters, and the whole model will automatically update and calculate new objective values.
Although Rhinoceros 3D, Grasshopper and Python communicate natively, there is no native communication between those three and MATLAB. Therefore, communication between the software is achieved by the exchange of text files. MATLAB writes the variables' value to a .csv file, Grasshopper waits for it, reads it, and then deletes it. It then performs all its calculations and then outputs, in a designated folder, the output of its calculations. 
Matlab waits for this file, reads and deletes it. Then a new iteration starts. 
This is how the grasshopper_link function works in MATLAB.



### Requirements:

   - Python 3.xx
   - Rhinoceros 3D 6. Plugins: Grasshopper, Anemone (Free Grasshopper Plugin), Karamba 3D (Paid Grasshopper Plugin)
   - Matlab. Plugins: Global Optimization Toolbox, Multi-objective optimization algorithm for expensive-to-evaluate function, available from: https://github.com/Eric-Bradford/TS-EMO

### Instructions:

1. Install all the required software, plugins and toolboxes
2. In the Matlab files, change the paths to a suitable path in your machine.
3. Repeat step 2 for the Python components in the Grasshopper definition
4. If not enabled, enable the timer in Grasshopper and make sure it is set to 500
5. Run the main.m Matlab file. There is 1 main.m for each folder, representing an algorithm option.


### Performance and OS:

Running Time: Every cycle of simulation takes about 5-10 seconds on Macbook Pro 16" 2019
OS: Windows 10
Processor: Intel Core i7-8850H

## Contributing: 
You are very welcome to contribute to this project by submitting a PR for minor changes. For more substantial changes, please raise an issue. Thank you! 
