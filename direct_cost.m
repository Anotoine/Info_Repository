function[weight]=direct_cost(g,src_index,dst_index)   %función que devuelve el peso entre dos nodos
n=1;
found=false;
while n<=length(g.segment)
  if src_index==g.segment(n).source     %buscamos el segmento donde src_index y dst_index se corresponden con g.segment.source y g.segment.destination
    if dst_index==g.segment(n).destination
      weight=g.segment(n).weight;     %cuando encontramos el segmento nos guardamos el peso
      found=true;
    end
  end
  n=n+1;
end
if found==false       %si no se ha encontrado el segmento mostramos error
  disp('error the segment is not found');
  weight=-1;
end
end 