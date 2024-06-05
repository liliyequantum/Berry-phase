clear
close all


h=figure;

subplot(2,1,1);
alpha=0:0.1:1;
electric_field={'0.004','0.008','0.012','0.016','0.02'};
peak=zeros(length(alpha),length(electric_field));
strategy='JoverE';
for i=1:length(electric_field)
    
    load(['./peak_alpha_data/peak_alpha_electric_field_',electric_field{i},'_strategy_',strategy,'.mat'])
    peak(:,i)=peak_alpha;
    
end
% color=colorGradient([182, 33, 254]/255,[31, 209, 249]/255,length(electric_field));
color=colorGradient([255, 192, 0]/255,[185, 185, 255]/255,length(electric_field));
for i=1:1:5
    plot(alpha,peak(:,i),...
        'color',color(i,:),'Linewidth', 2)
    hold on
end
plot(alpha,sqrt(2)*ones(length(alpha),1),'k--','LineWidth',1)
hold on
ylim([0,1.5])
yticks([1,1.1,1.2,1.3,sqrt(2),1.5])
yticklabels({'1','1.1','1.2','1.3','{\surd}2','1.5'})
legend('$\tilde{E}=0.004$','$\tilde{E}=0.008$','$\tilde{E}=0.012$','$\tilde{E}=0.016$','$\tilde{E}=0.02$',...
    'Interpreter','latex','location','best',...
    'Fontname','Times New Roman','FontSize',16)

xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
if length(strategy)==length('JoverE')
    ylabel('$\tilde{J}/\tilde{E}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
else
    ylabel('$\tilde{J}/\sqrt{\tilde{E}}$', 'Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
end
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',16)
ylim([1,1.5])
set(gcf,'Position',[10 10 600 1000])
text(-0.16,1.52,'$(a)$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)


subplot(2,1,2);
alpha=0:0.1:1;
conical_k=pi*(1-alpha.^2)./(1+alpha.^2);
flat_k=-2*pi*(1-alpha.^2)./(1+alpha.^2);
conical_mk=-pi*(1-alpha.^2)./(1+alpha.^2);
flat_mk=2*pi*(1-alpha.^2)./(1+alpha.^2);
shape={'-s','-^','-o','-d'};
color_blue = [31, 119, 180]/255;
color_red = [214, 39, 40]/255;
color_yellow = [255, 127, 14]/255;
color_purple = [148, 103, 189]/255;
color={[31, 119, 180]/255,[110, 168, 210]/255,[214, 39, 40]/255,[252, 107, 118]/255};
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
legend('$\xi=+1$, conical','$\xi=+1$, flat','$\xi=-1$, conical','$\xi=-1$, flat',...
    'Interpreter','latex','location','best',...
    'Fontname','Times New Roman','FontSize',14)
xlabel('$\alpha$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',16)
ylabel('Berry phase','Fontname', 'Times New Roman','FontSize',16)
set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',16)
yticks([-2*pi, -pi, 0, pi, 2*pi])
yticklabels({'-2\pi','-\pi','0','\pi','2\pi'})
ylim([-2*pi,2*pi+3])
set(gcf,'Position',[10 10 600 1000])
text(-0.16,2*pi+3.2,'$(b)$','Interpreter','latex','Fontname', 'Times New Roman','FontSize',20)

set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print(h,'filename','-dpdf','-r0')
saveas(gcf,'peak_alpha_berry_phase.pdf')
