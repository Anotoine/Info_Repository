function[]=write_airports(Airports)
f=fopen('AirportsLoc.txt','w');              %Create a txt to write
n=1;
while(n<=length(Airports))                   %For all Airports
    fprintf(f,'%s %f %f \n', Airports(n).name, Airports(n).longitude, Airports(n).latitude);
                                             %Writes the Airport name,
                                             %longitude and latitude
    n=n+1;
end
fclose(f);                                   %Close the file
end