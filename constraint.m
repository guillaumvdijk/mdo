function [c,ceq] = constraints(x,y)

[z1,z2,x1,y1_head, y2_head] = deal(x(1), x(2), x(3),x(4),x(5));
[y1,y2] = deal(y(1),y(2));



c = [c1, c2];
ceq = [ceq2,ceg2];
endq