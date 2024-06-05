clear
close all

color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

E_0=pi^2/4;
color={[31, 119, 180]/255,[214, 39, 40]/255,[255, 127, 14]/255,[148, 103, 189]/255,[44, 160, 44]/255};
electric={'0.002','0.004','0.008','0.03'};
% h=figure;

% subplot(2,2,1);
figure()
k=10000;
for i=1:3
   
    load(['./data_J_t/Bloch_Oscillation_alpha_T3_alpha_0_dp_x_0.0020162_dp_y_0.0019947_E_',...
            electric{i},'_t_max_99.9911_dt_0.01.mat'])
    
    plot(t(1:k),(J_inter(1:k)+J_intra(1:k))/electric_field/E_0/2,'color',color{i},'LineWidth',3)
    hold on
end
plot(t(1:k),ones(1,k),'k--','LineWidth',1)
hold on
% legend('$\tilde{E}=0.002$','$\tilde{E}=0.004$','$\tilde{E}=0.008$',...
%     'Interpreter','latex','location','best',...
%     'Fontname','Times New Roman','FontSize',17)

% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/\tilde{E}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
ylim([0,12])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
% set(gcf,'Position',[10 10 1200 1000])
% text(10,5,'$\alpha=0$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-20,12.65,'$(a)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,2);
figure()
k=10000;
for i=1:3
   
    load(['./data_J_t/Bloch_Oscillation_alpha_T3_alpha_1_dp_x_0.0020162_dp_y_0.0019947_E_',...
            electric{i},'_t_max_99.9911_dt_0.01.mat'])
    
    plot(t(1:k),(J_inter(1:k)+J_intra(1:k))/electric_field/E_0/2,'color',color{i},'LineWidth',3)
    hold on
end
plot(t(1:k),2*ones(1,k),'k--','LineWidth',1)
hold on
% legend('$\tilde{E}=0.002$','$\tilde{E}=0.004$','$\tilde{E}=0.008$',...
%     'Interpreter','latex','location','best',...
%     'Fontname','Times New Roman','FontSize',17)

% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/\tilde{E}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
ylim([0,12])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
% set(gcf,'Position',[10 10 1200 1000])
% text(10,5,'$\alpha=1$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-20,12.65,'$(b)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,3);
figure()
for i=1:4
    if i~=4
    load(['./data_J_t/Bloch_Oscillation_alpha_T3_alpha_0_dp_x_0.0020162_dp_y_0.0019947_E_',...
        electric{i},'_t_max_1000_dt_0.01.mat'])
    k=100000;
    else
        load('./data_J_t/Bloch_Oscillation_alpha_T3_alpha_0_dp_x_0.0020162_dp_y_0.0019947_E_0.03_t_max_1000_dt_0.005.mat')
        k=200000;
    end
    plot(t(1:k),(J_inter(1:k)+J_intra(1:k))/electric_field/E_0/2,'color',color{i},'LineWidth',3)
    hold on
end
plot(t(1:k),zeros(1,k),'k-','LineWidth',1)
hold on
% legend('$\tilde{E}=0.002$','$\tilde{E}=0.004$','$\tilde{E}=0.008$','$\tilde{E}=0.03$',...
%     'Interpreter','latex','location','northwest',...
%     'Fontname','Times New Roman','FontSize',17)

% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/\tilde{E}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
ylim([-15,55])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
% set(gcf,'Position',[10 10 1200 1000])
% text(700,45,'$\alpha=0$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-200,55,'$(c)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)

% subplot(2,2,4);
figure()
for i=1:4
    if i~=4
    load(['./data_J_t/Bloch_Oscillation_alpha_T3_alpha_1_dp_x_0.0020162_dp_y_0.0019947_E_',...
        electric{i},'_t_max_1000_dt_0.01.mat'])
    k=100000;

    else
        load('./data_J_t/Bloch_Oscillation_alpha_T3_alpha_1_dp_x_0.0020162_dp_y_0.0019947_E_0.03_t_max_1000_dt_0.005.mat')
        k=200000;
    end
    plot(t(1:k),(J_inter(1:k)+J_intra(1:k))/electric_field/E_0/2,'color',color{i},'LineWidth',3)
    hold on
end
plot(t(1:k),zeros(1,k),'k-','LineWidth',1)
hold on
% legend('$\tilde{E}=0.002$','$\tilde{E}=0.004$','$\tilde{E}=0.008$','$\tilde{E}=0.03$',...
%     'Interpreter','latex','location','northwest',...
%     'Fontname','Times New Roman','FontSize',17)

% xlabel('$\tilde{t}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% ylabel('$\tilde{J}/\tilde{E}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
ylim([-15,55])
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
% set(gcf,'Position',[10 10 1200 1000])
% text(700,45,'$\alpha=1$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
% text(-200,55,'$(d)$','Interpreter','latex','Fontname', 'Times New Roman','fontweight','bold','FontSize',20)


% set(h,'Units','Inches');
% pos = get(h,'Position');
% set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(h,'filename','-dpdf','-r0')
% saveas(gcf,'Bloch_Oscillation_cut_width_0_001.pdf')
% 
