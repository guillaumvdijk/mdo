function [f,y] = objective(x)


[z1,z2,x1,x2,y1_head, y2_head] = deal(x(1), x(2), x(3),x(4),x(5),x(6));
y1 = z1^2+x1+z2 - 0.2*y2_head;
y2 = sqrt(y1_head) + z2+ z2;  
y = [y1,y2]

f = x1^2+z2+y1+exp(-y2);


end