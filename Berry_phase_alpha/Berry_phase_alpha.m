clear
close all

alpha=0:0.1:1;

conical_k=pi*(1-alpha.^2)./(1+alpha.^2);
flat_k=-2*pi*(1-alpha.^2)./(1+alpha.^2);

conical_mk=-pi*(1-alpha.^2)./(1+alpha.^2);
flat_mk=2*pi*(1-alpha.^2)./(1+alpha.^2);

shape={'-^','-s','-^','-s'};
color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color_green = [0, 150, 0]/255;
color_light_green = [101, 205, 170]/255;
color_gray = [60, 90, 130]/255;
color_ligh_gray = [150, 195, 215]/255;
color_pink = [230, 80, 95]/255;
color_light_pink = [255, 100, 180]/255;
color={color_pink,color_light_pink,color_green,color_light_green};

h=figure;

plot(alpha,conical_k,shape{1},...
    'color',color{1},'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(alpha,flat_k,shape{2},...
    'color',color{2},'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(alpha,conical_mk,shape{3},...
    'color',color{3},'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(alpha,flat_mk,shape{4},...
    'color',color{4},'Linewidth', 2,'MarkerFaceColor', 'white')
hold on
plot(alpha,zeros(length(alpha),1),'k-','LineWidth',1)
hold on

legend('$\phi_{\lambda,+1}$','$\phi_{0,+1}$','$\phi_{\lambda,-1}$','$\phi_{0,-1}$',...
    'Interpreter','latex','location','northeast',...
    'Fontname','Times New Roman','FontSize',18)
% legend('$\xi=+1$, conical','$\xi=+1$, flat','$\xi=-1$, conical','$\xi=-1$, flat',...
%     'Interpreter','latex','location','best',...
%     'Fontname','Times New Roman','FontSize',14)
xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)
ylabel('Berry phase','Fontname', 'Times New Roman','FontSize',16)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
yticks([-2*pi, -pi, 0, pi, 2*pi])
yticklabels({'-2\pi','-\pi','0','\pi','2\pi'})
ylim([-2*pi,2*pi+3])

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'berry_phase.pdf')

    