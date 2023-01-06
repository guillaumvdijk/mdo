clear all;
close all;



f,y  = objective([2,3,5,7,11]);

options = optimset('Display','iter','Algorithm','sqp',Tolfun = 0.000001);

[x_opt,fval,exitflag,output] = fmincon(@residual_objective,x0,[],[],[],[],lb,ub,[],options);