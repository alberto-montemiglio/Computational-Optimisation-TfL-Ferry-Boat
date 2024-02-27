%% General Setup

close all
clc
clear
global grasshopper_input_file grasshopper_output_file input_file output_file

%defining file paths. Change if running on other PCs
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

%Create a function handle
Problem.f = 'grasshopper_link';

%Optimisation parameters
bounds = [3 10 1 3 3 3 1 ; 20 40 10 20 40 40 5].';
opts.maxevals = 400;
opts.tol = .00001;

%calling the DIRECT function
[minval, xatmin, history] = Direct(Problem,bounds);