function y = constraints_satisfied(x)
    y = 1;
    for i = 1:length(x)
        if ~(3-x(2) <= 0 && x(3)-0.20 <= 0 && -0.20-x(3) <= 0 && 200-x(4) <= 0)
            y = 0;
        end
    end
end
