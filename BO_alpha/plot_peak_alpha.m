clear
close all

alpha=0:0.1:1;

conical_k=pi*(1-alpha.^2)./(1+alpha.^2);
flat_k=-2*pi*(1-alpha.^2)./(1+alpha.^2);

conical_mk=-pi*(1-alpha.^2)./(1+alpha.^2);
flat_mk=2*pi*(1-alpha.^2)./(1+alpha.^2);

% shape={'^','s','^','s'};
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

trasparent_par = 0.5;
h=figure(1);
left_color = [8 111 189]/255;
right_color = color_light_pink;
set(h,'defaultAxesColorOrder',[left_color; right_color]);

yyaxis right
sca1 = scatter(alpha,conical_k,50,'^','MarkerFaceColor','white','MarkerEdgeColor',color{1},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{\lambda,-1}$');hold on;
sca2 = scatter(alpha,flat_k,80,'s','MarkerFaceColor','white','MarkerEdgeColor',color{2},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{0,-1}$');hold on;
sca3 = scatter(alpha,conical_mk,50,'^','MarkerFaceColor','white','MarkerEdgeColor',color{3},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{\lambda,-1}$');hold on;
sca4 = scatter(alpha,flat_mk,80,'s','MarkerFaceColor','white','MarkerEdgeColor',color{4},...
    'LineWidth',2,'MarkerEdgeAlpha',trasparent_par,'DisplayName','$\phi_{0,-1}$');hold on;

lh = plot(alpha,conical_k,'-.','Linewidth', 2,'Color',color{1});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,flat_k,'-.','Linewidth', 2,'Color',color{2});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,conical_mk,'-.','Linewidth', 2,'Color',color{3});hold on;
lh.Color = [lh.Color trasparent_par];

lh = plot(alpha,flat_mk,'-.','Linewidth', 2,'Color',color{4});hold on;
lh.Color = [lh.Color trasparent_par];

set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
yticks([-2*pi, -pi, 0, pi, 2*pi])
yticklabels({'-2\pi','-\pi','0','\pi','2\pi'})
ylim([-2*pi,2*pi+3])

yyaxis left
alpha=0:0.1:1;
electric_field={'0.004','0.008','0.012','0.016','0.02','0.03'};%,'0.05','0.08'};
peak=zeros(length(alpha),length(electric_field));
strategy='JoverE';
for i=1:length(electric_field)
    load(['./peak_alpha_data/peak_alpha_electric_field_',electric_field{i},'_strategy_',strategy,'.mat'])
    peak(:,i)=peak_alpha;
end

color=colorGradient([74, 222, 222]/255,[121, 126, 246]/255,length(electric_field));
for i=1:1:length(electric_field)
    plot(alpha,peak(:,i),'-o','color',color(i,:),'Linewidth', 2);hold on;
end
plot(alpha,sqrt(2)*ones(length(alpha),1),'--','color',[8 111 189]/255,'LineWidth',1)
hold on
plot(alpha,1.5*ones(length(alpha),1),'k-','LineWidth',1)
hold on
% legend({'$\tilde{E}=0.004$','$\tilde{E}=0.008$','$\tilde{E}=0.012$','$\tilde{E}=0.016$' ...
%     ,'$\tilde{E}=0.02$','$\tilde{E}=0.03$'},...
%     'Interpreter','latex','Location','best',...
%     'Fontname','Times New Roman','FontSize',16)

set(gca, 'LineWidth',1,'Fontname', 'Times New Roman','FontSize',20)
ylim([1,1.5])
yticks([1,1.2,1.5])
