function f = grasshopper_link(x)
    
    %Access the global variables 
    global grasshopper_input_file grasshopper_output_file input_file output_file
    
    %Write the inputs for Grasshopper
    csvwrite(grasshopper_input_file, x);
   
    % wait for the result
    checkForFile = 0;
    while checkForFile < 1
        checkForFile = checkForFile + exist(grasshopper_output_file,'file');
    end
    
    % read the results
    obj_val = readmatrix(grasshopper_output_file,'Range','A1:A5')
    
    %create a structure for the outputs, as required by surrogateopt
    f.Fval = obj_val(1);
    f.Ineq = [3-obj_val(2) obj_val(3)-0.20 -0.20-obj_val(3) 200-obj_val(4)]
    
    %Write inputs and outputs to a separate file for future Reference
    dlmwrite(input_file, x, '-append')
    dlmwrite(output_file, obj_val, '-append')
    
    %Delete output file for this iteration. Input file deleted by
    %Grasshopper
    delete(grasshopper_output_file);
end
