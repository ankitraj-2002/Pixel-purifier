function [bmat] = binary_matrix(mat)
bmat=(mat == 0) | (mat == 255);