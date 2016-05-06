function[g2]=add_node(g1,node_name)  %función para agregar un nodo nuevo
n=1;
found=false;
while((n<=length(g1.node))&&(found==false))  %buscamos el nombre del nodo en el grafo 
    if(node_name==g1.node(n))
     display('the name already exists. F:add_node');
     found=true;    %si el nodo ya existe salimos del bucle
    end
    n=n+1;
end
g2=g1;
if(~found)    %si el nodo no existe lo agregamos en el grafo
 g2.node(length(g1.node)+1)=node_name;    
end
end