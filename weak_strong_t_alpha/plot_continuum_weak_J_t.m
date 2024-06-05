clear
close all

color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

E_0=pi^2/4;

h=figure;

figure(1)
% subplot(2,2,1);
filename='./data_weak/alpha_T3_xi_1_alpha_0_p_max_8_p_min_0.005_dp_0.010006_E_0.0004_t_max_5_dt_0.01002';
load(strcat(filename,'.mat'))
plot(t,J_inter./electric_field/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_up_flat./electric_field/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_up_lower./electric_field/E_0,'color',color_purple,'LineWidth',2)
hold on
plot(t,J_flat_lower./electric_field/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0.,t_max],2*[1,1],'k--','LineWidth',2)
hold on
plot([0.,t_max],[1,1],'k--','LineWidth',2)
hold on
legend('$\mathcal{\widetilde{J}}^{inter}$','$\mathcal{\widetilde{J}}^{inter}_{\xi\gamma}$', ...
    '$\mathcal{\widetilde{J}}^{inter}_{\xi\beta}$','$\mathcal{\widetilde{J}}^{inter}_{\gamma\beta}$', ...
    'Location','best','fontsize',22,'fontname','times new roman', ...
    'Interpreter','latex')
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
% ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
ylim([0,2.5])
xlim([0,5])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
text(0.5,0.5,'$\alpha=0$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
text(-1.3,2.65,'$(a)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',24)

figure(2)
% subplot(2,2,2);
filename='./data_weak/alpha_T3_xi_1_alpha_0.2_p_max_8_p_min_0.005_dp_0.010006_E_0.0004_t_max_5_dt_0.01002';
load(strcat(filename,'.mat'))
plot(t,J_inter./electric_field/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_up_flat./electric_field/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_up_lower./electric_field/E_0,'color',color_purple,'LineWidth',2)
hold on
plot(t,J_flat_lower./electric_field/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0.,t_max],2*[1,1],'k--','LineWidth',2)
hold on
plot([0.,t_max],[1,1],'k--','LineWidth',2)
hold on
% legend('$\mathcal{\widetilde{J}}^{inter}$','$\mathcal{\widetilde{J}}^{inter}_{\xi\gamma}$', ...
%     '$\mathcal{\widetilde{J}}^{inter}_{\xi\beta}$','$\mathcal{\widetilde{J}}^{inter}_{\gamma\beta}$', ...
%     'Location','best','fontsize',22,'fontname','times new roman', ...
%     'Interpreter','latex')
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
% ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
ylim([0,2.5])
xlim([0,5])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
text(0.5,0.5,'$\alpha=0.2$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
text(-1.3,2.65,'$(b)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',24)

figure(3)
% subplot(2,2,3);
filename='./data_weak/alpha_T3_xi_1_alpha_0.6_p_max_8_p_min_0.005_dp_0.010006_E_0.0004_t_max_5_dt_0.01002';
load(strcat(filename,'.mat'))
plot(t,J_inter./electric_field/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_up_flat./electric_field/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_up_lower./electric_field/E_0,'color',color_purple,'LineWidth',2)
hold on
plot(t,J_flat_lower./electric_field/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0.,t_max],2*[1,1],'k--','LineWidth',2)
hold on
plot([0.,t_max],[1,1],'k--','LineWidth',2)
hold on
% legend('$\mathcal{\widetilde{J}}^{inter}$','$\mathcal{\widetilde{J}}^{inter}_{\xi\gamma}$', ...
%     '$\mathcal{\widetilde{J}}^{inter}_{\xi\beta}$','$\mathcal{\widetilde{J}}^{inter}_{\gamma\beta}$', ...
%     'Location','best','fontsize',22,'fontname','times new roman', ...
%     'Interpreter','latex')
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
% ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
ylim([0,2.5])
xlim([0,5])
% set(gcf,'Position',[10 10 1200 1000])
text(0.45,0.5,'$\alpha=0.6$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
text(-1.3,2.65,'$(c)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',24)

figure(4)
% subplot(2,2,4);
filename='./data_weak/alpha_T3_xi_1_alpha_1_p_max_8_p_min_0.005_dp_0.010006_E_0.0004_t_max_5_dt_0.01002';
load(strcat(filename,'.mat'))
plot(t,J_inter./electric_field/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_up_flat./electric_field/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_up_lower./electric_field/E_0,'color',color_purple,'LineWidth',2)
hold on
plot(t,J_flat_lower./electric_field/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0.,t_max],2*[1,1],'k--','LineWidth',2)
hold on
plot([0.,t_max],[1,1],'k--','LineWidth',2)
hold on
% legend('$\mathcal{\widetilde{J}}^{inter}$','$\mathcal{\widetilde{J}}^{inter}_{\xi\gamma}$', ...
%     '$\mathcal{\widetilde{J}}^{inter}_{\xi\beta}$','$\mathcal{\widetilde{J}}^{inter}_{\gamma\beta}$', ...
%     'Location','best','fontsize',22,'fontname','times new roman', ...
%     'Interpreter','latex')
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
% ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
ylim([0,2.5])
xlim([0,5])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
text(0.5,0.5,'$\alpha=1$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',24)
text(-1.3,2.65,'$(d)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',24)


% set(h,'Units','Inches');
% pos = get(h,'Position');
% set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'filename','-dpdf','-r0')
% saveas(gcf,'continuum_weak_t.pdf')
