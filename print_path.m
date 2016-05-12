function [] = print_path (g,p)
n=1;
printf('%g: ',p.points(length(p.points)).weight)
while n<=length(p.points)
    a=p.points(n).node;
    b=node_name(g,a);
    printf('%s ',g.node(b))
    n = n+1;
end
end