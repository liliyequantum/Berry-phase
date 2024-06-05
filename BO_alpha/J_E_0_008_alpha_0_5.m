clear
close all
% maxNumCompThreads(5);

% color_blue = [31, 119, 180]/255;
% color_red = [214, 39, 40]/255;
% color_yellow = [255, 127, 14]/255;
% color_purple = [148, 103, 189]/255;
% color_green = [44, 160, 44]/255;

load('filter_hexagon_cut_width_0.001_p_x_size_1200_p_y_size_1050.mat')%load filter_hexagon, p_x_size,p_y_size

global electric_field
global alpha_parameter
electric_field=0.008;
alpha_parameter=0.5;

t=linspace(1e-5,300,30000);
% t=[0,0.01];
dt=t(2)-t(1);
% t_max=t(end);

x=zeros(length(p_x),6);
x(:,6)=1;

J_inter=zeros(length(t),1);
J_intra=zeros(length(t),1);

start = tic;
c=0;
for k = 1:1:length(t)-1

    T=[t(k),t(k+1)];
    tic

    %"""Runge Kutta fourth order"""
    x=RungeKutta4(T,x,p_x,p_y);%vector input, vector output

    %"""Current: J_p_inter and J_p_intra"""

    check_normalization= sum(x.*x,2);
    disp(strcat('normalization max: ',num2str(max(check_normalization)),' min:',num2str(min(check_normalization))))
         
    %compute J_matrix
    sin_2phi=2.*alpha_parameter./(1+(alpha_parameter).^2);
    cos_2phi=(1-(alpha_parameter).^2)./(1+(alpha_parameter).^2);
    f_k=-(1+2.*exp(-3./2.*1j.*p_y).*cos(sqrt(3)./2.*(p_x-electric_field.*t(k+1))));
    sin_theta_plus_p_y=sin(angle(f_k)+3./2.*p_y);
    cos_theta_plus_p_y=cos(angle(f_k)+3./2.*p_y);
    common_factor=-sqrt(3).*sin(sqrt(3)./2.*(p_x-electric_field.*t(k+1)));
    J_11 = common_factor.*cos_theta_plus_p_y;
    J_12 = common_factor.*1j./sqrt(2).*sin_2phi.*sin_theta_plus_p_y;
    J_13 = common_factor.*1j.*cos_2phi.*sin_theta_plus_p_y;
    J_23 = common_factor.*1j./sqrt(2).*sin_2phi.*sin_theta_plus_p_y;
    J_p_inter =J_p_inter_map(x,J_12,J_13,J_23) ;
    J_p_intra =J_p_intra_map(x,J_11);
    
    %filter to hexagon
    J_p_inter = J_p_inter.*filter_hexagon;
    J_p_intra = J_p_intra.*filter_hexagon;
    
    %integrate the first Brilloun hexagon region of momentum space
    J_inter(k+1,1)=sum(J_p_inter).*dp_x.*dp_y;
    J_intra(k+1,1)=sum(J_p_intra).*dp_x.*dp_y;
    
    if isnan(J_inter(k+1,1)) || isnan(J_intra(k+1,1))
        disp(['nan and k=',num2str(k)])
        save(['./data_J_alpha/Bloch_Oscillation_alpha_T3','_alpha_',num2str(alpha_parameter),...
    '_dp_x_',num2str(dp_x),'_dp_y_',num2str(dp_y),'_E_',num2str(electric_field),'_t_max_',num2str(t(k)),'_dt_',num2str(t(2)-t(1)),'.mat'], ...
    't','p_x','p_y','dp_x','dp_y','J_p_inter','J_p_intra','p_x_size','p_y_size','electric_field','J_inter','J_intra','alpha_parameter','x')
        stop
    end
    
    disp(strcat("spend time: ", num2str(toc)," s")) 
    
end
disp(strcat("whole time: ", num2str(toc(start))," s")) 

save(['./data_J_alpha/Bloch_Oscillation_alpha_T3','_alpha_',num2str(alpha_parameter),...
    '_dp_x_',num2str(dp_x),'_dp_y_',num2str(dp_y),'_E_',num2str(electric_field),'_t_max_',num2str(t(end)),'_dt_',num2str(t(2)-t(1)),'.mat'], ...
    't','p_x','p_y','J_p_inter','J_p_intra','p_x_size','p_y_size','electric_field','J_inter','J_intra','alpha_parameter','x')

