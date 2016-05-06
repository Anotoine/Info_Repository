function[stars]=airport_stars(Airports,airport_name)
n=1;
found=false;                                         %Found false for the search
while(n<=length(Airports)&&found==false)             %For all the airports
    if(airport_name==Airports(n).name)               %If the name is the same
        found=true;                                  %Exit the loop (search)
        stars=Airports(n).STAR;                      %and declarates de sid exit
    end
    n=n+1;
end
if(found==false)                                     %If not found empty vector
    stars=[];
end
end