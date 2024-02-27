clear all
clc
close all
surr_out = readmatrix('output_file_400_1.csv');
ga_out = readmatrix('output_file.csv');

record_1 = max(ga_out(1, :));
ga_opt = zeros(length(ga_out(:, 1)), 1);
for i = 1: length(ga_out(:, 1))
    if ga_out(i, 1) < record_1 && constraints_satisfied(ga_out(i, :))
        record_1 = ga_out(i, 1);
    end
    ga_opt(i) = record_1;
end  

record_2 = max(surr_out(1, :));
% surr_out = transpose
length((surr_out(:, 1)))
surr_opt = zeros(length(surr_out(:, 1)), 1);
length(surr_opt) 
for i = 1:length(surr_opt) 
    if surr_out(i, 1) < record_2 && constraints_satisfied(surr_out(i, :)) %&& surr_out(i, 1) < 10000
        record_2 = surr_out(i, 1);
    end
    surr_opt(i) = record_2;

end  
surr_out;

hold on
plot(ga_opt)
plot(surr_opt)
legend('GA', 'EGO')
xlabel('n.of Iterations')
ylabel('Obj. Function VAlue')
hold off