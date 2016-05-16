function [g] = read_graph()
f = fopen('SegmentsMedium.txt','r');
NP = read_navPoints();
n = 1;
while n <= length(NP)  %TnavPoint=struct('identifier',0,'nameprocedures','','latitude',0,'longitude',0);
    g.node(n).name = NP(n).nameprocedures;
    g.node(n).latitude = NP(n).latitude;
    g.node(n).longitude = NP(n).longitude;
    g.node(n).type = 'NavPoint';
    n = n + 1;
end
n = 1;
while ~feof(f)          %Tsegment = struct('source', 0, 'destination', 0, 'weight', 0);
    g.segment(n).source=fscanf(f,'%d',1);           
    g.segment(n).destination=fscanf(f,'%d',1);  
    g.segment(n).weight=fscanf(f,'%f',1);     
    a=fgetl(f); 
    n = n + 1;
end