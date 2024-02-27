%% Input Variables
%{
There are 7 variables to be optimised:
1: Beam, or the width of the boat
    3 20
2: LOA, or length of the boat
    10 40
3: Number of reinforcements in the x axis **careful! the actual number will
be 2n+1, to make it odd
    1 10
4: Number of reinforcements in the y axis
    3 20
5: Width of the reinforcement cross section
    3 40
6: Height of the reinforcement cross section
    3 40
7: Speed of the boat
    1 5

%}


%% General Set Up
close all
clear all
clc
global grasshopper_input_file grasshopper_output_file input_file output_file

%file paths. Change for simulation on other PCs
grasshopper_input_file = "C:\Users\alber\OneDrive - Imperial College London\UNIVERSITY\YEAR 3\Optimisation\PROJECT\simulation_output\grasshopper_input.csv";
grasshopper_output_file = "C:\Users\alber\OneDrive - Imperial College London\UNIVERSITY\YEAR 3\Optimisation\PROJECT\simulation_output\grasshopper_output.csv";
input_file = "input_file.csv";
output_file = "output_file.csv";

%Delete all previous result files
if(exist(output_file,'file'))
    delete(output_file);
end
if(exist(input_file,'file'))
    delete(input_file);
end

%make sure grasshopper is not running
if(exist(grasshopper_output_file,'file'))
        delete(grasshopper_output_file);
end
if(exist(grasshopper_input_file,'file'))
    delete(grasshopper_input_file);
end
pause(2)


%% Optimisation

%specify options for the optimisation
options = optimoptions('surrogateopt','MaxFunctionEvaluations',400, 'MaxTime', 2000, "ObjectiveLimit", 10, 'PlotFcn','surrogateoptplot');

%Create a function handle
objconstr = @grasshopper_link;

%Define integer variables
intcon = [3 4];

%Define Upper and Lower Bounds
lb = [3 10 1 3 3 3 1].';
ub = [20 40 10 20 40 40 5].';

%Run the Optimisation
[x,fval,exitflag,output,trials] = surrogateopt(objconstr, lb, ub, intcon, options)


