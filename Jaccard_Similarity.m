function [J_S]=Jaccard_Similarity(DDI)
%calculate jaccard similarity 
%DDI is the adjacency matrix of drug drug interaction network
%J_S jaccard similarity 

[m,n]=size(DDI);

if n>0
for i=1:m
    for j=i:n
        A=find(DDI(:,i)>0);
        B=find(DDI(:,j)>0);
        C=length(intersect(A,B));
        D=length(union(A,B));
        if D>0
            J_S(i,j)=C/D;
            J_S(j,i)=J_S(i,j);
        else
            J_S(i,j)=0;
            J_S(j,i)=0;
        end
    end
end
end
