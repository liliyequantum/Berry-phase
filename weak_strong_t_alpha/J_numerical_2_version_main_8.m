clear
close all
maxNumCompThreads(6);

global electric_field
global xi
global alpha_parameter
electric_field=0.0004;
xi=+1;
alpha_parameter=0.8;

t=linspace(0,5,500);
dt=t(2)-t(1);
t_max=t(end);

p_x_n=linspace(-8,-0.005,800);
p_x_p=-p_x_n(end:-1:1);
p_y_n=linspace(-8,-0.005,800);
p_y_p=-p_y_n(end:-1:1);
dp=p_x_p(2)-p_x_p(1);
p_max=p_x_p(end);
p_min=p_x_p(1);
[p_x,p_y]=meshgrid([p_x_n,p_x_p],[p_y_n,p_y_p]);

% p_x_n=linspace(-4,-0.0001,400);
% p_x_p=linspace(0.0001,12,1200);
% p_y_n=linspace(-8,-0.0001,800);
% p_y_p=-p_y_n(end:-1:1);
% dp=p_x_p(2)-p_x_p(1);
% p_max=p_x_p(end);
% p_min=p_x_p(1);
% [p_x,p_y]=meshgrid([p_x_n,p_x_p],[p_y_n,p_y_p]);

% p_x = -1:0.01:1;
% p_y = -1:0.01:1;
% dp=p_x(2)-p_x(1);
% p_max=p_x(end);
% p_min=0;
% [p_x,p_y]=meshgrid(p_x,p_y);


p_x = p_x(:);
p_y = p_y(:);

check_normalization = zeros(length(p_x),1);

x=zeros(length(p_x),6);
x(:,6)=1;

J_inter=zeros(length(t),1);
J_intra=zeros(length(t),1);

J_up_flat=zeros(length(t),1);
J_up_lower=zeros(length(t),1);
J_flat_lower=zeros(length(t),1);
start = tic;
for k = 1:1:length(t)-1

    T=[t(k),t(k+1)];
    tic

    %"""Runge Kutta fourth order"""
    x=RungeKutta4(T,x,p_x,p_y);%vector input, vector output

    %"""Current: J_p_inter and J_p_intra"""

    check_normalization= sum(x.*x,2);
    normalization = repmat(check_normalization,[1,6]);
    x=x./sqrt(normalization);
    check_normalization= sum(x.*x,2);
     
    [J_p_inter,J_p_up_flat,J_p_up_lower,J_p_flat_lower] =J_p_inter_map(x,t(k+1),p_x,p_y);
    J_p_intra=J_p_intra_map(x,t(k+1),p_x,p_y);

    J_inter(k+1,1)=sum(J_p_inter)*dp.^2;
    J_intra(k+1,1)=sum(J_p_intra)*dp.^2;
    
    J_up_flat(k+1,1)=sum(J_p_up_flat)*dp.^2;
    J_up_lower(k+1,1)=sum(J_p_up_lower)*dp.^2;
    J_flat_lower(k+1,1)=sum(J_p_flat_lower)*dp.^2;
    
    disp(strcat("spend time: ", num2str(toc)," s")) 
end
disp(strcat("whole time: ", num2str(toc(start))," s")) 
disp(strcat('normalization max: ',num2str(max(check_normalization)),' min:',num2str(min(check_normalization))))

save([pwd,'/alpha_T3','_xi_',num2str(xi),'_alpha_',num2str(alpha_parameter), '_p_max_',num2str(p_max),'_p_min_',num2str(p_min),...
    '_dp_',num2str(dp),'_E_',num2str(electric_field),'_t_max_',...
    num2str(t_max),'_dt_',num2str(dt),'.mat'], ...
    't','t_max','dt','p_x','p_y','p_max','p_min','dp','electric_field','J_inter','J_intra','J_p_inter','J_p_intra',...
    'J_up_flat','J_up_lower','J_flat_lower','check_normalization',...
    'xi','alpha_parameter')


