function [list_of_node_indexes] = neighbor_nodes(g, src_index)   %funcion que devuelve un vector con los indices de los nodos vecinos a otro nodo
list_of_node_indexes = [];    %creamos el vector

if src_index <= length(g.node)   %comprobamos que el indice de salida se corresponde con un nodo del vector de nodos
    n = 1;
    m = 1;
    while n <= length(g.segment)      %buscamos todos los nodos vecinos y nos guardamos sus indices en el nuevo vector
        if g.segment(n).source == src_index
            list_of_node_indexes(m) = g.segment(n).destination;
            m = m + 1;
        end
        n = n + 1;
    end
else        %si el indice de salida no se corresponde con una posicion del vector de nodos se muestra el error y devielve el vector=0 
    disp('the src_index is not found');
    list_of_node_indexes(1) = 0;
end
end