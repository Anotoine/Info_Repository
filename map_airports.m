function[]=map_airports(Airports,countryId)
[f,e]=fopen('AirportsMap.kml','w');                                         %Opens the file and prepares to write
if (f==-1)                                                                  %If  error a message is shown
    disp('Error in map_airports')
    disp(e)
    fclose(f);
    return
else
fprintf(f,'<?xml version="1.0" encoding="UTF-8"?>\n');                      %Starts writting the KML code
fprintf(f,'<kml xmlns="http://www.opengis.net/kml/2.2">\n');
fprintf(f,'<Document>\n');
n=1;
while(n<=length(Airports))                                                  %For all airports
 if(countryId(1)==Airports(n).name(1)&&countryId(2)==Airports(n).name(2))   %Check if the airport is in the selected country
    
    fprintf(f,'<Placemark>\n');                                             %Write its correspondent Placemark (w/ name, latitude and longitude
    fprintf(f,'<name>%s</name>\n',Airports(n).name);
    fprintf(f,'<description>%s Airport</description>\n',Airports(n).name);
    fprintf(f,'<Point>\n');
    fprintf(f,'<coordinates> %f, %f, 0</coordinates>\n',Airports(n).longitude, Airports(n).latitude);
    fprintf(f,'</Point>\n');
    fprintf(f,'</Placemark>\n');
    
 end
 n=n+1;                                                                     %Check for the next airport
end
fprintf(f,'</Document>\n');
fprintf(f,'</kml>\n'); 
fclose(f);                                                                  %and close the file
end
end