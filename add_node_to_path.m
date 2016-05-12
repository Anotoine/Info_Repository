function[p2]=add_node_to_path(p,n,w)
p.points(length(points)+1).node=n;
p.points(length(p.points)+1).weight=(w+p.points(length(p.points).weight));
p2=p;
end