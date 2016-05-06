function[lat, lon, id]=find_navPoint(NP,navPoint_name)
n=1;
found=false;
while(n<=length(NP)&&found==false)                          %For all NP and until it gets
    if(strcmp(navPoint_name,NP(n).nameprocedures)==true)    %If the string name procedures are equal
        found=true;                                         %The search is compleated
        lat=NP(n).latitude;                                 %Lat, lon and id are defined, now
        lon=NP(n).longitude;
        id=NP(n).identifier;
    end
    n=n+1;                                                  %Next NP
end
if found==false                                             %If error all=-1
    lat=-1;
    lon=-1;
    id=-1;
end
end