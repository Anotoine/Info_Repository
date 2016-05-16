function[Airports]=read_airports()
[f,e]=fopen ('AirportsMedium.txt','r');    %open the file to be read
if(f==-1)                                  %if there were an error opening then show the error
 disp(e)
 Airports=[];                              %and give Airports as a empty vector
 return;
end
Tairport=struct('name',[],'SID',[],'STAR',[],'latitude',0,'longitude',0);
Airports=Tairport;
%Define a Airports as a Tairports
TnavPoint=struct('identifier',0,'nameprocedures','','latitude',0,'longitude',0);
Airports.SID=TnavPoint;
Airports.STAR=TnavPoint;
%Define a Airports.SID and Airports.STAR as a TnavPonints
c=1;
while(feof(f)==false)          %until the file arrive at the end
  m=1;
   Airports(c).name=fscanf(f,'%s',1);    %read the name of the airport
   a=fgetl(f);
   readsid=fgetl(f);                     %read all the SIDs
   vectorsid=strsplit(readsid);          %make the string to a vectors
      while(m<=length(vectorsid))        %give for every SID his correct name
      Airports(c).SID(m).nameprocedures=vectorsid(m);
      m=m+1;
      end
   readstars=fgetl(f);                   %read all the STARs
   vectorstars=strsplit(readstars);      %make the string to a vectors
   m=1;
      while(m<=length(vectorstars))      %give for every SID his correct name
      Airports(c).STAR(m).nameprocedures=vectorstars(m);
      m=m+1;
      end
  c=c+1;                                 %Do the same for the next Airport
end
fclose(f);                               %Close the file
end