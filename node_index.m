function[index]=node_index(g,node_name)
found=false;
n=1;
while((found==false)&&(n<=length(g.node)))   %Mira todos los nombres y los compara con el nombre introducido  (Search)
    if(node_name==g.node(n))    %Si el nombre concuerda con alguno de los nombres de los vectores, entonces se sale del Search y se define index como el valor que corresponde en el vector
        found=true;
        index=n;
    end
    n=n+1;
end
if(found==false)  %si el nombre no se encuentra se define el indice como -1 y muestra el error
    index=-1;
    display('the name given is not found')
end
end