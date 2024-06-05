clear
close all

color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

% filename='Bloch_Oscillation_alpha_T3_alpha_1_dp_x_0.0060609_dp_y_0.0052489_E_0.0004_t_max_1_dt_0.010101';
filename='./data_J_alpha/Bloch_Oscillation_alpha_T3_alpha_0.1_dp_x_0.0020162_dp_y_0.0019947_E_0.004_t_max_500_dt_0.01';

load(strcat(filename,'.mat'))
E_0=pi^2/4;
figure(1)
plot(t,J_inter./electric_field/E_0/2,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_intra./electric_field/E_0/2,'color',color_red,'LineWidth',2)
hold on
plot(t,(J_intra+J_inter)./electric_field/E_0/2,'color',color_yellow,'LineWidth',2)
hold on
legend('inter band','intra band','total')

% plot(t,J_up_flat./electric_field,'color',color_red,'LineWidth',2)
% hold on
% plot(t,J_up_lower./electric_field,'color',color_yellow,'LineWidth',2)
% hold on
% plot(t,J_flat_lower./electric_field,'color',color_purple,'LineWidth',2)
% hold on

% plot(t,J_intra./transpose(t)./electric_field.^(1.5),'color',color_blue,'LineWidth',2)
% hold on
% plot(t,J_upper./transpose(t)./electric_field.^(1.5),'color',color_red,'LineWidth',2)
% hold on
% plot(t,J_flat./transpose(t)./electric_field.^(1.5),'color',color_yellow,'LineWidth',2)
% hold on

% plot([0.,t_max],pi.^2/2*[1,1],'k--','LineWidth',2)
% hold on
% plot([0.,t_max],pi.^2/4*[1,1],'k--','LineWidth',2)
% hold on

% t_max=t(end);
% plot([0,t_max],2*sqrt(2)*[1,1],'k--','LineWidth',2)
% hold on
% plot([0,t_max],2.*(sqrt(2)-1)*[1,1],'k--','LineWidth',2)
% hold on
% plot([0,t_max],2.*[1,1],'k--','LineWidth',2)
% hold on

% legend('inter band total','up to flat band','up to lower band','flat to lower band','Location','best')
% legend('intra band total','upper band','flat band','Location','best')

% title(strcat('xi = ',num2str(xi),'alpha = ',num2str(alpha_parameter),'E = ',num2str(electric_field), ' p max = ',...
%     num2str(p_max),' p min = ', num2str(p_min),' dp =', num2str(dp),' dt= ',num2str(dt)),...
%     'Fontname', 'Times New Roman','FontSize',16)
title(strcat('alpha = ',num2str(alpha_parameter),'  E = ',num2str(electric_field)),...
    'Fontname', 'Times New Roman','FontSize',16)
% title(strcat('E = ',num2str(electric_field), ' p max = ', num2str(p_max),' p min = ', num2str(p_min),' dp =', num2str(dp),' dt= ',num2str(dt)),...
%     'Fontname', 'Times New Roman','FontSize',16)
xlabel('Time','Fontname', 'Times New Roman','FontSize',16)
% ylabel('J/E','Fontname', 'Times New Roman','FontSize',16)
ylabel('J/E','Fontname', 'Times New Roman','FontSize',16)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',16)
set(gcf,'color','w');

% saveas(gcf,strcat(filename,'.pdf'))

J_p_inter = reshape(J_p_inter,[2.*p_y_size,2.*p_x_size]);
J_p_intra = reshape(J_p_intra,[2.*p_y_size,2.*p_x_size]);
p_x=reshape(p_x,[2.*p_y_size,2.*p_x_size]);
p_y=reshape(p_y,[2.*p_y_size,2.*p_x_size]);
figure(2)
surface(p_x,p_y,J_p_inter,'EdgeColor','none')
colormap(parula(20));
colorbar;
xlabel('p_x','Fontname', 'Times New Roman','FontSize',16)
ylabel('p_y','Fontname', 'Times New Roman','FontSize',16)
figure(3)
surface(p_x,p_y,J_p_intra,'EdgeColor','none')
colormap(parula(20));
colorbar;
xlabel('p_x','Fontname', 'Times New Roman','FontSize',16)
ylabel('p_y','Fontname', 'Times New Roman','FontSize',16)

% set(gcf,'color','w');
% caxis([0 0.0005])

% [row,col]=find(isnan(J_p_inter))
% [row,col]=find(isnan(J_p_intra))
% J_p_intra(isnan(J_p_intra))=0;
% J_p_inter(isnan(J_p_inter))=0;




