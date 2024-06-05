clear
close all

color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

E_0=2;

% h=figure;

% subplot(2,2,1);
figure()
filename='./data_strong/alpha_T3_xi_1_alpha_0_p_max_8_p_min_0.0001_dp_0.010012_E_0.4096_t_max_10_dt_0.01001';
load(strcat(filename,'.mat'))
t=t(2:end);
J_intra=J_intra(2:end);
J_upper=J_upper(2:end);
J_flat=J_flat(2:end);

% y=J_intra./transpose(t)./electric_field.^(1.5)/E_0;
plot(t,J_intra./transpose(t)./electric_field.^(1.5)/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_upper./transpose(t)./electric_field.^(1.5)/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_flat./transpose(t)./electric_field.^(1.5)/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0,t_max],2*sqrt(2)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*(sqrt(2)-1)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*[1,1]/E_0,'k--','LineWidth',2)
hold on
legend('$\mathcal{\widetilde{J}}^{intra}$','$\mathcal{\widetilde{J}}^{intra}_{\xi}$', ...
    '$\mathcal{\widetilde{J}}^{intra}_{\gamma}$', ...
    'Location','best','fontsize',24,'fontname','times new roman', ...
    'Interpreter','latex')
% legend('intra band total','upper band','flat band','Location',[0.35,0.705,0.05,0.05],'fontname','times new roman','fontsize',18)
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/(\tilde{E}^{1.5}\tilde{t})$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20,...
%     'position',[-1,0.8]);
xticks([0.01,2,4,6,8,10])
xticklabels({'0.01','2','4','6','8','10'})
% yticks([sqrt(2)-1, 1, sqrt(2)])
% yticklabels({'({\surd} 2) - 1','1','{\surd}2'})
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',26)
% set(gcf,'Position',[10 10 1200 1000])
% text(7,0.2,'$\alpha=0$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-2,1.5,'$(a)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,2);
figure()
filename='./data_strong/alpha_T3_xi_1_alpha_0.2_p_max_8_p_min_0.0001_dp_0.010012_E_0.4096_t_max_10_dt_0.01001';
load(strcat(filename,'.mat'))
plot(t,J_intra./transpose(t)./electric_field.^(1.5)/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_upper./transpose(t)./electric_field.^(1.5)/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_flat./transpose(t)./electric_field.^(1.5)/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0,t_max],2*sqrt(2)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*(sqrt(2)-1)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*[1,1]/E_0,'k--','LineWidth',2)
hold on
% legend('$\mathcal{\widetilde{J}}^{intra}$','$\mathcal{\widetilde{J}}^{intra}_{\alpha}$', ...
%     '$\mathcal{\widetilde{J}}^{intra}_{\gamma}$', ...
%     'Location','best','fontsize',22,'fontname','times new roman', ...
%     'Interpreter','latex')
% legend('intra band total','upper band','flat band','Location',[0.79,0.705,0.05,0.05],'fontname','times new roman','fontsize',18)
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/(\tilde{E}^{1.5}\tilde{t})$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20,...
%     'position',[-1,0.8])
xticks([0.01,2,4,6,8,10])
xticklabels({'0.01','2','4','6','8','10'})
% yticks([sqrt(2)-1, 1, sqrt(2)])
% yticklabels({'({\surd} 2) - 1','1','{\surd}2'})
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
% text(7,0.2,'$\alpha=0.2$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-2,1.5,'$(b)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,3);
figure()
filename='./data_strong/alpha_T3_xi_1_alpha_0.6_p_max_8_p_min_0.0001_dp_0.010012_E_0.4096_t_max_10_dt_0.01001';
load(strcat(filename,'.mat'))
plot(t,J_intra./transpose(t)./electric_field.^(1.5)/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_upper./transpose(t)./electric_field.^(1.5)/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_flat./transpose(t)./electric_field.^(1.5)/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0,t_max],2*sqrt(2)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*(sqrt(2)-1)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*[1,1]/E_0,'k--','LineWidth',2)
hold on
% legend('intra band total','upper band','flat band','Location',[0.35,0.235,0.05,0.05],'fontname','times new roman','fontsize',18)
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/(\tilde{E}^{1.5}\tilde{t})$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20,...
%     'position',[-1,0.8])
xticks([0.01,2,4,6,8,10])
xticklabels({'0.01','2','4','6','8','10'})
% yticks([sqrt(2)-1, 1, sqrt(2)])
% yticklabels({'({\surd} 2) - 1','1','{\surd}2'})
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
% text(7,0.2,'$\alpha=0.6$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-2,1.5,'$(c)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,4);
figure()
filename='./data_strong/alpha_T3_xi_1_alpha_1_p_max_8_p_min_0.0001_dp_0.010012_E_0.4096_t_max_10_dt_0.01001';
load(strcat(filename,'.mat'))
plot(t,J_intra./transpose(t)./electric_field.^(1.5)/E_0,'color',color_blue,'LineWidth',2)
hold on
plot(t,J_upper./transpose(t)./electric_field.^(1.5)/E_0,'color',color_red,'LineWidth',2)
hold on
plot(t,J_flat./transpose(t)./electric_field.^(1.5)/E_0,'color',color_yellow,'LineWidth',2)
hold on
plot([0,t_max],2*sqrt(2)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*(sqrt(2)-1)*[1,1]/E_0,'k--','LineWidth',2)
hold on
plot([0,t_max],2.*[1,1]/E_0,'k--','LineWidth',2)
hold on
% legend('intra band total','upper band','flat band','Location',[0.79,0.235,0.05,0.05],'fontname','times new roman','fontsize',18)
% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/(\tilde{E}^{1.5}\tilde{t})$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20,...
%     'position',[-1,0.8])
xticks([0.01,2,4,6,8,10])
xticklabels({'0.01','2','4','6','8','10'})
% yticks([sqrt(2)-1, 1, sqrt(2)])
% yticklabels({'({\surd} 2) - 1','1','{\surd}2'})
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',24)
% set(gcf,'Position',[10 10 1200 1000])
% text(7,0.2,'$\alpha=1$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-2,1.5,'$(d)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% set(h,'Units','Inches');
% pos = get(h,'Position');
% set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'filename','-dpdf','-r0')
% saveas(gcf,'continuum_strong_t.pdf')
