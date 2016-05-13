function [] = print_path (g,p)
n=1;
printf('%g: ',p.points(length(p.points)).weight)
while n<=length(p.points)
    a=p.points(n).node;
<<<<<<< HEAD
    disp(p.points(length(p.points)).weight)
    printf('%s ',char(g.node(a)))
=======
    b=node_name(g,a);
    printf('%s ',g.node(b))
>>>>>>> origin/master
    n = n+1;
end
end