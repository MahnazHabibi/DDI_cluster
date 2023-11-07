function [Clusters]=NGMG(adj,k)
%adj: Knowledge graph
% k: number of clusters

Clusters = spectralcluster(adj,k,'Distance','precomputed');