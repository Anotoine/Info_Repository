function[p2]=add_node_to_path(p,n,w)
p.points(length+1).node=n;
p.points(length+1).weight=(w+p.points(length(points)));
p2=p;
end