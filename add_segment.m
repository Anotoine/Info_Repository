function [g2]=add_segment(g1,segment)     %función que agrega un segmento nuevo
n=1;
found=false;
errorsegment=false;
if (segment.weight<=0||segment.source<=0||segment.destination<=0)  %comprueba si el segmento tiene datos correctos
   found=true;         %si no es correcto ya no entra en el bucle
   errorsegment=true;
end
while((n<=length(g1.segment))&&(found==false))
   
    if(segment.source==g1.segment(n).source)    %busca en g1 en el nuevo segmento para ver si ya existia
      if(segment.destination==g1.segment(n).destination)
        if(segment.weight==g1.segment(n).weight)
          display('the segment already exist');
          found=true;                          %si lo encuentra se acaba la busqueda
        end
      end
    end
    n=n+1;
end
g2=g1;
if(~found)                  %si no lo ha encontrado agrega el nuevo segmento 
 g2.segment(length(g1.segment)+1).source=segment.source;
 g2.segment(length(g1.segment)+1).destination=segment.destination;
 g2.segment(length(g1.segment)+1).weight=segment.weight; 
end
if  (errorsegment==true)
disp('Error, the segment is not correct');   %si los datos son erroneos muestra el error y devuelve g2=g1
end
end