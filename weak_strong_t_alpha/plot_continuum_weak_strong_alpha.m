clear
close all
color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

h=figure;

subplot(1,2,1);
load('./data_weak/converge_data.mat')
E_0=pi^2/4;
Alpha_parameter=0:0.1:1;
y=inter_band./electric_field/E_0;
plot(Alpha_parameter,inter_band./electric_field/E_0,'-s', 'Color', color_blue,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,up_flat_band./electric_field/E_0,'-^', 'Color', color_red,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,flat_lower_band./electric_field/E_0,'-o', 'Color', color_yellow,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,up_lower_band./electric_field/E_0,'-v', 'Color', color_purple,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,ones(1,length(Alpha_parameter)),'k--','Linewidth', 1)
hold on
plot(Alpha_parameter,2*ones(1,length(Alpha_parameter)),'k--','Linewidth', 1)
hold on
set(gcf,'Position',[10 10 1500 500])
ylim([-0.1,2.1])
legend('inter band total','flat to up band','lower to flat band','lower to up band','Location','best')
xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',14)
ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',14)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',14)
% text(-0.15,2.1,'$(a)$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)

subplot(1,2,2);

load('./data_strong/converge_data.mat')
Alpha_parameter=0:0.1:1;
E_0=intra_band(1)/electric_field;
y=intra_band./electric_field/E_0;
plot(Alpha_parameter,intra_band./electric_field/E_0,'-s', 'Color', color_blue,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,upper_band./electric_field./E_0,'-^', 'Color', color_red,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,flat_band./electric_field/E_0,'-o', 'Color', color_yellow,'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(Alpha_parameter,ones(1,length(Alpha_parameter)),'k--','Linewidth', 1)
hold on
plot(Alpha_parameter,sqrt(2)*ones(1,length(Alpha_parameter)),'k--','Linewidth', 1)
hold on
legend('intra band total','upper band','flat band','Location','best')
xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',14)
ylabel('$\tilde{J}/\tilde{E}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',14)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',14)
set(gcf,'Position',[10 10 1500 500])
yticks([0, 0.5, 1, sqrt(2)])
yticklabels({'0','0.5','1','{\surd}2','Interpreter','tex'})
% text(-0.15,1.5,'$(b)$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'weak_strong_alpha.pdf')
