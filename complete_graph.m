function [g2] = complete_graph(g, Airports)
g2 = g;
n = length(g.node) + 1;
m = 1;
while m <= length(Airports)  %Tairport=struct('name',[],'SID',[],'STAR',[],'latitude',0,'longitude',0)
    g2.node(n).name = Airports(m).name;
    g2.node(n).latitude = Airports(m).latitude;
    g2.node(n).longitude = Airports(m).longitude;
    g2.node(n).type = 'Airport';
    cont = 1;
    x = 1;
    y = 1;
    while cont <= length(Airports(m).SID)
        while x <= length(g.node)
            if strcmp(Airports(m).SID(cont).nameprocedures, g.node(x).name)
                %TnavPoint=struct('identifier',0,'nameprocedures','','latitude',0,'longitude',0);
                seg=create_segment(n,x,10);    %%create_segment(i1,i2,w)
                g2=add_segment(g2,seg);        %%add_segment(g,segment)
            end
            x = x + 1;
            if strcmp(Airports(m).STAR(cont).nameprocedures, g.node(y).name)
                %TnavPoint=struct('identifier',0,'nameprocedures','','latitude',0,'longitude',0);
                seg=create_segment(y,n,10);    %%create_segment(i1,i2,w)
                g2=add_segment(g2,seg);        %%add_segment(g,segment)
            end
            y = y + 1;
        end
        cont = cont + 1;
    end 
    n = n + 1;
    m = m + 1; 
end
end