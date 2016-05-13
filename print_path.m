function [] = print_path (g,p)
n=1;
printf('%g: ',p.points(length(p.points)).weight)
while n<=length(p.points)
    a=p.points(n).node;
    disp(p.points(length(p.points)).weight)
    printf('%s ',char(g.node(a)))
    n = n+1;
end
end