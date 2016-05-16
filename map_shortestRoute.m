function [] = map_shortestRoute (g, na, nb)
[f,e]=fopen('Map_ShortestRoute.kml','w');                                   %Opens the file and prepares to write
%%
%porDonde = shortest_path(g,na,nb,0);
%Hace falta corregir shortest_path antes para poder adecuar esto
%%
if (f==-1)                                                                  %If  error a message is shown
    disp('Error. F:map_shortestRoute')
    disp(e)
    fclose(f);
    return
else
fprintf(f,'<?xml version="1.0" encoding="UTF-8"?>\n');                      %Starts writting the KML code
fprintf(f,'<kml xmlns="http://www.opengis.net/kml/2.2">\n');
fprintf(f,'<Placemark>\n');
fprintf(f,'<name>%s-%s</name>\n',g.node(na).name,g.node(nb).name);
fprintf(f,'<description>Flight Route</description>\n');
fprintf(f,'<LineString>\n');
fprintf(f,'<altitudeMode>absolute</altitudeMode>\n');
fprintf(f,'<extrude>1</extrude>\n');
fprintf(f,'<coordinates>\n');
n = 1;
while n <= length(p)                                                         %For all points in p
    m = p.points(n).node;
    fprintf(f,'%f,%f,0\n',g.node(m).longitude,g.node(m).latitude);           %Print the point
    n = n + 1;                                                               %Go to the next point
end
fprintf(f,'</coordinates>\n');
fprintf(f,'</LineString>\n');
fprintf(f,'</Placemark>\n');
fprintf(f,'</kml>\n'); 
fclose(f);                                                                  %end de .KML and close the file
disp('Done!')
end
end
