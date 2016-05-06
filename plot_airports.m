function[]=plot_airports(Airports)
Tcountry=struct('name','','number',0);                        %Set a struct with the name and the number
m=1;
n=1;
Country(m)=Tcountry;
Country_vector=[];                                            %Start creating the vector for the countries
  while (n<=length(Airports))                                 %for all the airports
    b=[Airports(n).name(1),Airports(n).name(2)];
    s=1;
    found=false;
    while(s<=length(Country) && found==false)                 %if its not repeated go to the next
        if (strcmp(b,Country(s).name))
          found=true;
        else
          s=s+1;
        end
    end
    if (found==true)                                          %If its repeated +1 to the Country.number
      Country(s).number=Country(s).number+1;
      Country_vector(s)=Country_vector(s)+1;
    else 
      Country(m).name=[Airports(n).name(1),Airports(n).name(2)];
      Country(m).number=1;
      Country_vector(m)=1;
      m=m+1;
    end
    n=n+1;                                                   %For the next airport             
  end
bar(Country_vector)                                          %Create a Bar from the struct
end