function[g]= create_graph()      %funcion que crea g del tipo Tgraph
Tgraph=struct('node',[],'segment',[]);
Tnode = struct('name', '', 'latitude', 0, 'longitude', 0, 'type', '');
Tsegment = struct('source', 0, 'destination', 0, 'weight', 0);
g = Tgraph;
g.node = Tnode;
g.segment = Tsegment;
end
