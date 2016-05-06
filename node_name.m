function[name]=node_name(g,node_index)    %funcion que nos muestra el nombre de un nodo a partir de una posicion en el vector de nodos
if(node_index>length(g.node)||node_index<=0)       %comprobamos que el indice se corresponde con una posicion del vector de nodos, si no es asi, muestra el error
    disp('error the node does not exist. F: node_name');
    name='error';
else
    name=g.node(node_index);   %el nombre del nodo sera el correspondiente a la posicion del vector nodo = al indice
end
end
