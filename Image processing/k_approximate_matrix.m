function [kmat]= k_approximate_matrix(tmat,t,i,j,k)
kmat=tmat( i+t-k:i+t+k , j+t-k:j+t+k);
