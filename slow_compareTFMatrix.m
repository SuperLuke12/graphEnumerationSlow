function [RE, TFCoeffs] = slow_compareTFMatrix(TF, TFC, C, bList, cList, kList)

    RE = 0;

    
    for i=1:height(bList)
        for x=1:height(cList)
            for y=1:height(kList)
                

                cn = zeros(1,10);
                cd = zeros(1,10);

                [n, d] = numden(subs(TF, C, [bList(i,:), cList(x,:), kList(y,:)]));

                
                if any(ismember(TFMatrix, TFCoeffs, 'rows') == 1)
                    RE = 1;
                    return
                end
            end
        end
    end
end