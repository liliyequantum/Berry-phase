clear
close all

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
color={color_gray,color_ligh_gray,color_pink,color_light_pink};
% color={color_purple,[180,150, 189]/255,color_yellow,[255, 200, 50]/255};
% color={[31, 119, 180]/255,[110, 168, 210]/255,[214, 39, 40]/255,[252, 107, 118]/255};

trasparent_par = 1;
h=figure;

lh = plot(alpha,conical_k,'Linewidth', 2,'Color',color{1});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,flat_k,'Linewidth', 2,'Color',color{2});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,conical_mk,'Linewidth', 2,'Color',color{3});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,flat_mk,'Linewidth', 2,'Color',color{4});hold on;
lh.Color = [lh.Color trasparent_par];

ln = plot(alpha,zeros(length(alpha),1),'k-','LineWidth',1);hold on;
lh.Color = [lh.Color trasparent_par];

scatter(alpha,conical_k,50,shape{1},'MarkerFaceColor','white','MarkerEdgeColor',color{1},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par);hold on;
scatter(alpha,flat_k,80,shape{2},'MarkerFaceColor','white','MarkerEdgeColor',color{2},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par);hold on;
scatter(alpha,conical_mk,50,shape{3},'MarkerFaceColor','white','MarkerEdgeColor',color{3},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par);hold on;
scatter(alpha,flat_mk,80,shape{4},'MarkerFaceColor','white','MarkerEdgeColor',color{4},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par);hold on;

legend('$\xi=+1$, conical','$\xi=+1$, flat','$\xi=-1$, conical','$\xi=-1$, flat',...
    'Interpreter','latex','location','best',...
    'Fontname','Times New Roman','FontSize',14)
xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
ylabel('Berry phase','Fontname', 'Times New Roman','FontSize',16)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',16)
yticks([-2*pi, -pi, 0, pi, 2*pi])
yticklabels({'-2\pi','-\pi','0','\pi','2\pi'})
ylim([-2*pi,2*pi+3])

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'berry_phase.pdf')

    