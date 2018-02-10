%% my_mesh.m
%%
%% Requirement: the x y z mesh is in mymesh.txt
%%
%% (c) Ocaya - Jan 6, 2018
%% 
load -ascii mymesh.txt x y z;   % assuming data is in two columns, time and amplitude
n = length(mymesh);
x = mymesh(1:n,1);
y = mymesh(1:n,2);
z = mymesh(1:n,3);
v_x = linspace(-20, 20);
v_y = linspace(-20, 20);
[xx,yy] = meshgrid(v_x, v_y);
zz = griddata(x,y,z,xx,yy);
%% plot3(x,y,z,'.');
shading interp
%%scatter3(x,y,z,'filled')

surfc(xx,yy,zz);
colorbar

figure(2);

contour(xx,yy,zz);
