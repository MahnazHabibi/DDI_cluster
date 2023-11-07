function[adj]=constract_Knowledge_graph(J_S,Chemical_Similarity,Alpha)
% 0<= Alpha <=1

adj=Alpha*(Chemical_Similarity)+(1-Alpha)*(J_S);