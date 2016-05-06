function[Airports_full]=locate_airports(Airports,NP)
n=1;
Airports_full=Airports;                                %Copy Airports_full from Airports
while (n<=length(Airports))                            %For all airports 
    m=1; 
    found=0;
    while((m<=length(NP))&& found==0)                  %For all NP
        if strcmp(Airports(n).SID(1).nameprocedures,NP(m).nameprocedures)
                                                       %If the nameprocedure is the same
           found=1;                                    %its found
        else
            m=m+1;                                     %if not next NP for comparing
        end
    end
    if (found==1)                                      %When a found lat and long of the airport are defined
        Airports_full(n).latitude=NP(m).latitude;      %If not airport remains unlocalizaed
        Airports_full(n).longitude=NP(m).longitude;
    end
    n=n+1;                                             %Next airport
end
m=1;
n=1;
cont=1;
while n<=length(Airports)                                                  %For all airports
  while (m<=length(Airports(n).SID))&&(cont<=length(NP))
                                                                           %For all NP
    if strcmp(Airports(n).SID(m).nameprocedures, NP(cont).nameprocedures)       %If the name procedures is the same
      Airports(n).SID(m).identifier=NP(cont).identifier;
      Airports(n).SID(m).longitude=NP(cont).longitude;                     %Copy the lat, long and id
      Airports(n).SID(m).latitude=NP(cont).latitude;                       %to the corresponing SID
      m=m+1;
      cont=1;
    else
      cont=cont+1;                                                         %If not the the same go to the next
    end
   
  end
  n=n+1;                                                                   %When all he sids of the airport are filled go to the next airport
  cont=1;
  m=1;
end

n=1;                                                                       %Restart the counters
m=1;
cont=1;

while n<=length(Airports)                                                  %For all Airports
  while (m<=length(Airports(n).STAR))&&(cont<=length(NP))                  %For all STAR
    
    if strcmp(Airports(n).STAR(m).nameprocedures,NP(cont).nameprocedures)      %If the name of the STAR is the same
      Airports(n).STAR(m).identifier=NP(cont).identifier;                  %Then copy the lat, log and id to the
      Airports(n).STAR(m).longitude=NP(cont).longitude;                    %STAR airport
      Airports(n).STAR(m).latitude=NP(cont).latitude;
      m=m+1;
      cont=1;
    else
      cont=cont+1;                                                         %If not the same go to the next
    end
  
  end
  m=1;                                                                     %When all the stars of the aiport are filled go to the next airport
  cont=1;
  n=n+1;
end
end