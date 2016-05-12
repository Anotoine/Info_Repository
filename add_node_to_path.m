function[p2]=add_node_to_path(p,n,w)
    p.points(length(p.points)+1).node=n;
    a=p.points(length(p.points)).weight;
    p.points(length(p.points)+1).weight=(w+a);
    p2=p;
end