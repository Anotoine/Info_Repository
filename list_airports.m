function [] = list_airports(g)
n = 1;
m = 0;
while n <= length(g.node)
    if strcmp(g.node(n).type,'Airport')
        fprintf('name: %s, index: %d\n',g.node(n).name,n)
        m = m + 1;
    end
    if m == 20
        disp('----Next Page----')
        m = 0;
    end
    n = n + 1;
end
end