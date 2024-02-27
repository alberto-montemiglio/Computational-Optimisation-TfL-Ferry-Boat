function y = isFeasible(constraints)
    y = 1
    for i = 1:length(constraints)
        if constraints(i)>0
            y = 0
        end
    end
end    