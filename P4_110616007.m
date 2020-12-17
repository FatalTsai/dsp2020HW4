load lighthouse;
show_img(xx);
xx3=xx(1:3:end,1:3:end);
show_img(xx3);
L=size(xx3);
nn=ceil((.999:1:3*L(2))/3);
xholdrows=xx3(:,nn);
show_img(xholdrows);


mm=ceil((.999:1:3*L(1))/3);
xhold=xholdrows(mm,:);
show_img(xhold);

n1=0:6;
xr1=(-2).^n1;
tti=0:0.1:6;
xr1linear=interp1(n1,xr1,tti);
stem(tti,xr1linear)

xx3=xx(1:3:end,1:3:end);
N=size(xx3);
n1=1:N(1);
tti=1:1/3:N(1);
xxlinear1=interp1(n1,xx3,tti);
n2=1:N(2);
tti2=1:1/3:N(2);
xxlinear=interp1(n2,xxlinear1',tti2);
show_img(xxlinear');
