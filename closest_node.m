function [dst_index]=closest_node(g,src_index)    %funcion que devuelve el indice del nodo con menor peso desde un nodo de salida
if (src_index<=length(g.node))     
    n=1;
    found=false;                   
    while (n<=length(g.segment)&&found==false)  %para adjudicar un valor minimo de peso y un indice de nodo hacemos un primer bucle
        if g.segment(n).source==src_index
            min=g.segment(n).weight;
            dst_index=g.segment(n).destination;
            found=true;        %una vez encontrado el primer nodo y peso salimos del bucle
        end
        n=n+1;
    end
    while n<=length(g.segment)    %en este bucle seguimos recorriendo los segmentos comparando los pesos de los nodos con un mismo indice de salida
        if g.segment(n).source==src_index
            if g.segment(n).weight<min    %comparamos los pesos y nos quedamos con el minimo y con el indice correspondiente
                dst_index=g.segment(n).destination;    
                min=g.segment(n).weight;
            end
        end
        n=n+1;
    end
else         %si el indice de salida no se corresponde con un nodo el vector de nodos mostramos el error
    display('error the node is not found')
    dst_index=0;
end
end