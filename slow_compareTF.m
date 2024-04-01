function output = slow_compareTF(TF1, TF2, C, kList, cList, bList)

    output = 0;

    if TF1 == TF2
        output = 1;
        return
    end


    for i=1:height(kList)
        for x=1:height(cList)
            for y=1:height(bList) 
                if isequal(subs(TF1, C, [kList(i,:), cList(x,:), bList(y,:)]),TF2)
                    output = 1;
                    return
                end
            end
        end
    end
end