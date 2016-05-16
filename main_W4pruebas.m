g=create_graph;
NP=read_navPoints;
Airports=read_airports();
Airports=locate_airports(Airports,NP);
g=read_graph();
g=complete_graph(g,Airports);
% disp(g)
list_airports(g)
%%map_shortestRoute(g,45,46)   %%Hace falta el Shortest_Route para que
%%funcione