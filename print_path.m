function [] = print_path (g,p)
n=1;
printf('%g: ',p.points(lenght(p.points)).weight)
while n<=length(p.points)
    a=p.points(n).node;
    printf('%s ',g.node(a))
    n = n+1;
end
end