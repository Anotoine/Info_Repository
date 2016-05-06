function[NP]=read_navPoints()
[f,e]=fopen ('NavPoints.txt','r');               %Open the file to read
if(f==-1)                                        %If there is any error he should be check
 disp(e);
 NP=[];                                          %and return an empty NP vector
 return;
end
TnavPoint=struct('identifier',0,'nameprocedures','','latitude',0,'longitude',0);
NP=TnavPoint;
%Create a NP struct
n=1;
while(feof(f)==false)                            %Until the file gets to the end
    NP(n).identifier=fscanf(f,'%d',1);           %Read the id of the point
    NP(n).nameprocedures=fscanf(f,'%s',1);       %Read the name of the point
    NP(n).latitude=fscanf(f,'%f',1);             %Read the latitde
    NP(n).longitude=fscanf(f,'%f',1);            %Read the longitude
    a=fgetl(f);                                  %End the line
    n=n+1;                                       %Get to the next point
end
fclose(f);                                       %Close the file
end
