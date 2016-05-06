function[seg] = create_segment(i1,i2,w)    %funcion que devuelve un segmento de tipo Tsegment con indices de salida y llegada y peso
Tsegment=struct('source',0,'destination',0,'weight',0);    %creamos el struct
seg=Tsegment;      %definimos seg de tipo Tsegment
if(i1<=0||i2<=0||w<=0) %comprobamos si los datos son correctos, sino es asi mostramos el error y devolvemos todo a 0    
   display('error only numbers above 0');
   seg.source=0;
   seg.destination=0;
   seg.weight=0;
else 
seg.source=i1;
seg.destination=i2;
seg.weight=w;

end
end
