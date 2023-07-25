% function [ps] = pixel_similarity(i,j,s,t)
% ps=1/((1+abs(i-s)+abs(j-t))^2);

% function [s] = pixel_similarity(k)
% n=2*k+1;
% v=1:(n);
% t=ones(n,1)*v;
% s=transpose(t);
% s=ones(n)+abs((k+1).*ones(n)-s)+abs((k+1).*ones(n)-t);
% s=1./(s.*s);

function [ps] = pixel_similarity(k)
switch k
    case 1
        ps =[0.111111111111111	0.250000000000000	0.111111111111111;
            0.250000000000000	1	0.250000000000000;
            0.111111111111111	0.250000000000000	0.111111111111111];
    case 2
        ps=[0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000;
            0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000;
            0.111111111111111	0.250000000000000	1	0.250000000000000	0.111111111111111;
            0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000;
            0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000];
    case 3
        ps=[0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061;
            0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778;
            0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000;
            0.0625000000000000	0.111111111111111	0.250000000000000	1	0.250000000000000	0.111111111111111	0.0625000000000000;
            0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000;
            0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778;
            0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061];
    case 4
        ps=[0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457;
            0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000;
            0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061;
            0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778;
            0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	1	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000;
            0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778;
            0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061;
            0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000;
            0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457];
    case 5
        ps=[0.00826446280991736	0.0100000000000000	0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457	0.0100000000000000	0.00826446280991736;
            0.0100000000000000	0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457	0.0100000000000000;
            0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457;
            0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000;
            0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061;
            0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	1	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778;
            0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.250000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061;
            0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.111111111111111	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000;
            0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0625000000000000	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457;
            0.0100000000000000	0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0400000000000000	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457	0.0100000000000000;
            0.00826446280991736	0.0100000000000000	0.0123456790123457	0.0156250000000000	0.0204081632653061	0.0277777777777778	0.0204081632653061	0.0156250000000000	0.0123456790123457	0.0100000000000000	0.00826446280991736];
    otherwise
        disp('pixel simmilarity limit exceeded')
end


