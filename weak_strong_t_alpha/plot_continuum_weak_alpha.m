clear
close all
color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [44, 160, 44]/255;

alpha=0:0.1:1;

conical_k=pi*(1-alpha.^2)./(1+alpha.^2);
flat_k=-2*pi*(1-alpha.^2)./(1+alpha.^2);

conical_mk=-pi*(1-alpha.^2)./(1+alpha.^2);
flat_mk=2*pi*(1-alpha.^2)./(1+alpha.^2);

shape={'^','s','^','s'};
color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [80, 110, 0]/255;
color_light_green = [5, 215, 160]/255;
color_gray = [60, 90, 130]/255;
color_ligh_gray = [150, 195, 215]/255;
color_pink = [230, 25, 95]/255;
color_light_pink = [255, 100, 180]/255;
color={color_pink,color_light_pink,color_gray,color_ligh_gray};

trasparent_par = 0.5;
h=figure(1);
left_color = [0 0 0];
right_color = color_light_pink;
set(h,'defaultAxesColorOrder',[left_color; right_color]);

yyaxis right

sca1 = scatter(alpha,conical_k,50,shape{1},'MarkerFaceColor','white','MarkerEdgeColor',color{1},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{\lambda,-1}$');hold on;
sca2 = scatter(alpha,flat_k,80,shape{2},'MarkerFaceColor','white','MarkerEdgeColor',color{2},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{0,-1}$');hold on;

lh = plot(alpha,conical_k,'-.','Linewidth', 2,'Color',color{1});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,flat_k,'-.','Linewidth', 2,'Color',color{2});hold on;
lh.Color = [lh.Color trasparent_par];

% legend('$\phi_{\lambda,-1}$','$\phi_{0,-1}$',...
%     'Interpreter','latex','location','eastoutside',...
%     'Fontname','Times New Roman','FontSize',14)
% xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
% ylabel('Berry phase','Fontname', 'Times New Roman','FontSize',16)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
yticks([-2*pi, -pi, 0, pi, 2*pi])
yticklabels({'-2\pi','-\pi','0','\pi','2\pi'})
ylim([-2*pi,2*pi+3])

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'berry_phase.pdf')


load('./data_weak/converge_data.mat')
E_0=pi^2/4;
Alpha_parameter=0:0.1:1;
% h=figure;
yyaxis left
y=inter_band./electric_field/E_0;
p1 = plot(Alpha_parameter,inter_band./electric_field/E_0,'-s', 'Color', color_blue,'Linewidth', 2,'MarkerFaceColor', 'white','DisplayName','${^{c}}\widetilde{J}^{inter}$');hold on;
p2 = plot(Alpha_parameter,up_flat_band./electric_field/E_0,'-^', 'Color', color_red,'Linewidth', 2,'MarkerFaceColor', 'white','DisplayName','${^{c}}\widetilde{J}^{inter}_{\alpha\gamma}$');hold on;
p3 = plot(Alpha_parameter,flat_lower_band./electric_field/E_0,'-o', 'Color', color_yellow,'Linewidth', 2,'MarkerFaceColor', 'white','DisplayName','${^{c}}\widetilde{J}^{inter}_{\gamma\beta}$');hold on;
p4 = plot(Alpha_parameter,up_lower_band./electric_field/E_0,'-v', 'Color', color_purple,'Linewidth', 2,'MarkerFaceColor', 'white','DisplayName','${^{c}}\widetilde{J}^{inter}_{\alpha\beta}$');hold on;
p5 = plot(Alpha_parameter,ones(1,length(Alpha_parameter)),'k--','Linewidth', 1);hold on;
p6 = plot(Alpha_parameter,2*ones(1,length(Alpha_parameter)),'k-','Linewidth', 2);hold on;
% yticks([0, 1.5, pi^2/4, 3.5, pi^2/2])
% yticklabels({'0','1.5','\pi^2/4','3.5',' \pi^2/2'})
% ylim([-0.1,2.1])
% legend('${^{c}}\widetilde{J}^{inter}$','${^{c}}\widetilde{J}^{inter}_{\alpha\gamma}$',...
%     '${^{c}}\widetilde{J}^{inter}_{\gamma\beta}$','${^{c}}\widetilde{J}^{inter}_{\alpha\beta}$','Location','westoutside',...
%     'fontsize',18,'interpreter','latex','fontname','times new roman')
% title('t=5,P_x=8,P_y=8,h=0.01,E=0.0004,T=5')
% legend([sca1, sca2],'Interpreter','latex','location','eastoutside',...
%     'Fontname','Times New Roman','FontSize',14)
% legend([p1,p2,p3,p4],'Location','best',...
%     'fontsize',15,'interpreter','latex','fontname','times new roman')
% xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',18)
% ylabel('${^{c}}\widetilde{J}^{inter}/\widetilde{E}^{c}$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',18)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'continuum_weak_alpha.pdf')
