clear
close all

a=4*pi/3/sqrt(3);

p_x=linspace(-2.5*a,2.5*a,2000);
p_y=linspace(-sqrt(3)*a,sqrt(3)*a,1500);
[p_x,p_y]=meshgrid(p_x,p_y);
energy=sqrt(1+4.*cos(sqrt(3)/2.*p_x).*(cos(3/2.*p_y)+cos(sqrt(3)/2.*p_x)));

point_x=[-a/2,a/2,a,a/2,-a/2,-a,-a/2];
point_y=[sqrt(3)*a/2,sqrt(3)*a/2,0,-sqrt(3)*a/2,-sqrt(3)*a/2,0,sqrt(3)*a/2];
color_red = [214, 39, 40]/255;

h=figure;
h.Position = [100 100 600 400];
surface(p_x,p_y,energy,'EdgeColor','none')
hold on
plot3(point_x,point_y,100*ones(1,7),'Color',color_red,'Linewidth', 3)
hold on
axis tight
% axis off
xlabel('k_x','Fontname', 'Times New Roman','FontSize',22)
ylabel('k_y','Fontname', 'Times New Roman','FontSize',22)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',22)
colormap(parula(20));
colorbar;