function Gout = slow_main(elementList)

    % Order of elements is K C B
    N = sum(elementList);
    
    tic
    A = {};
    for i=1:N
        A = [A; slow_step_1(i, A)];
    end
    disp(strcat('Step 1 done in ~', string(toc), 's'))

    tic
    B = slow_step_2(A);
    disp(strcat('Step 2 done in ~', string(toc), 's'))

    tic
    C = slow_step_3(B, N);
    disp(strcat('Step 3 done in ~', string(toc), 's'))
    
    tic
    [D, tf_list] = slow_step_4(C, elementList);
    disp(strcat('Step 4 done in ~', string(toc), 's'))
    
    disp(length(D))
    % tic
    % slow_step_5(tf_list, elementList);
    % disp(strcat('Step 5 done in ~', string(toc), 's'))
    % 
    % Gout = D;
    % 
    % for i=1:length(Gout)
    %     h = plot(Gout{i}, 'NodeLabel', Gout{i}.Nodes.Color, 'EdgeLabel',Gout{i}.Edges.Type);
    %     filename = strcat('mainStep4_', string(i),'.png');
    %     saveas(h, filename);
    % end
end