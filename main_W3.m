%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% mainGraph
% Programa para probar que el grafo funciona correctamente
%
g = create_graph();

g = add_node(g,'A');
g = add_node(g,'B');
g = add_node(g,'C');
g = add_node(g,'D');
g = add_node(g,'E');
g = add_node(g,'F');
g = add_node(g,'G');
g = add_node(g,'H');

seg = create_segment(node_index(g,'A'),node_index(g,'B'),1);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'A'),node_index(g,'F'),8);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'A'),node_index(g,'E'),8);
g = add_segment(g,seg);

seg = create_segment(node_index(g,'B'),node_index(g,'C'),2);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'B'),node_index(g,'G'),6);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'B'),node_index(g,'F'),6);
g = add_segment(g,seg);

seg = create_segment(node_index(g,'C'),node_index(g,'D'),1);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'C'),node_index(g,'G'),2);
g = add_segment(g,seg);

seg = create_segment(node_index(g,'D'),node_index(g,'G'),1);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'D'),node_index(g,'H'),4);
g = add_segment(g,seg);

seg = create_segment(node_index(g,'E'),node_index(g,'F'),5);
g = add_segment(g,seg);

seg = create_segment(node_index(g,'G'),node_index(g,'F'),1);
g = add_segment(g,seg);
seg = create_segment(node_index(g,'G'),node_index(g,'H'),1);
g = add_segment(g,seg);

%Tgraph de la semana 1
disp('------')

p = shortest_path (g,'A','F',false);

