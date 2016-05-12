function[porDonde]=shortest_path(g,nStart,nEnd,verbose)

a=node_index(g,nStart);
b=node_index(g,nEnd);
p=create_path();
p.points(1).node=nStart;
p.points(1).weight=0;
pts(1)=p;
found=false;
m=1;
n=1;      
if closest_node (g,a)==b
    found=true;
    p.points(2).node=nStart;
    p.points(2).weight=direct_cost(g,a,b);
    porDonde=p;
    if verbose==true
    print_path(g,p);
    end
end
while (found==false)      
    ind=path_minimun_weight(pts);
    porDonde=pts(ind);
    result=path_weight_node(pts,ind);
    pts=remove_path(pts,ind);
    if verbose==true
        print_path(g,p);
    end
    V=neighbor_nodes(g,length(porDonde.points.node));   
    if isempty(V)
        found=true;
        disp('no hay camino');
        porDonde=[];
    end
   while n<=length(V)
     while m<=length(porDonde.points)
       if V(n)==porDonde.points(m).node
          V=remove_path(V,n);
       end
      m=m+1;
     end
   n=n+1; 
   end
   
    if length(porDonde.points.node)==b
    found=true;
    end
n=1;
x=1;
m=1;

    while n<=length(V)&&found==false
    cost=direct_cost(g,length(porDonde.points.node),V(n));
    costeprevisto=result+cost;
    encontrado=false;
    m=1;
        while m<=length(pts)&&encontrado==false
            while x<=length(pts(m).points)&&encontrado==false
                if V(n)==pts(m).points(x).node
                    if costeprevisto<=pts(m).points(x).weight
                        pts(m)=add_node_to_path(porDonde,V(n),cost);
                        encontrado=true;
                    else
                        encontrado=true;
                    end
                else
                x=x+1;
                end 
             end
            m=m+1;
        end
    if encontrado==false
        pts(length(pts)+1)=add_node_to_path(porDonde,V(n),cost);
    end
    encontrado=false; 
    x=1;
    m=1;
    n=n+1;
    end
end
end