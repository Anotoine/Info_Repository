Airports=read_airports();       %Create Airports from Airports file
disp(Airports)
NP=read_navPoints();            %Create NP from NavPoints file
disp(NP)
disp('1----')

navPoint_name='AAAAA';
[lat, lon, id]=find_navPoint(NP, navPoint_name);
disp(navPoint_name)             %should return AAAAA
disp(lat)                       %should return 46.4044
disp(lon)                       %should return 29.6758
disp(id)                        %should return 1
disp('2----')

navPoint_nameE='ZZZA';                                    
[latE, lonE, idE]=find_navPoint(NP, navPoint_nameE);
disp(navPoint_nameE)             %should return ZZA
disp(latE)                       %should return -1
disp(lonE)                       %should return -1
disp(idE)                        %should return -1
disp('3----')

Airports=locate_airports(Airports, NP);    %Should put the lat and long of each airport
disp('4----')
                        
airport_name='LEBL';
sids=airport_sids(Airports,airport_name);
disp(airport_name)                %should return LEBL
disp(sids)                        %should return BCN.D
disp('5----')

airport_nameE='LEEE';
sidsE=airport_sids(Airports,airport_nameE);
disp(airport_nameE)               %should return LEEE
disp(sidsE)                       %should return []
disp('6----')

stars=airport_stars(Airports,airport_name);
disp(airport_name)                %should return LEBL
disp(stars)                       %should return BCN.A
disp('7----')

starsE=airport_stars(Airports,airport_nameE);
disp(airport_nameE)                %should return LEEE
disp(starsE)                       %should return []
disp('8----')

write_airports(Airports)           %should create a file AirportsLoc.txt
disp('9----')              


plot_airports(Airports)            %should creat a plot with the airports by Country
disp('10---')
                                            

countryId='LE';
map_airports(Airports,countryId)   %should create a file Airports.kml
disp('11---')
                                                
countryId='0';
map_airports(Airports,countryId)   %should create a file with no points (Placemarks)
disp('12---')
