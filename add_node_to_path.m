function p2=add_node_to_path(p,n,w)
p.points(length(p.points)+1).node=n;
p.points(length(p.points)+1).weight=p.points(length(p.points)).weight+w;
p2=p;
end