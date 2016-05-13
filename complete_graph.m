function [g2] = complete_graph(g, Airports)
g2=g;
n=length(g.node)+1;
m = 1;
while m <= length(Airports)  %Tairport=struct('name',[],'SID',[],'STAR',[],'latitude',0,'longitude',0)
    g2.node(n).name = Airports(m).name;
    g2.node(n).latitude = Airports(m).latitude;
    g2.node(n).longitude = Airports(m).longitude;
    g2.node(n).type = 'Airport';
    n = n + 1;
    m = m + 1;
end
n=length(g.segment)+1;
while n <= length(Airports)
    m=1;
    while m <= length(Airports.SID)
        b=1;
        while b <= length(g.segment)
             if Airports(n).SID(m) == g.segment.SID(b)
               
             end
         b=b+1;    
        end
         m=m+1;
    end
    n=n+1;
end
end