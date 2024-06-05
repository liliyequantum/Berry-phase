clear
close all

alpha={'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'};
electric='0.02';
strategy='JoverE';
E_0=pi^2/4;
peak_alpha=zeros(1,length(alpha));
for i = 1:length(alpha)
    
    filename=['./data_J_alpha/Bloch_Oscillation_alpha_T3_alpha_',...
        alpha{i},'_dp_x_0.0020162_dp_y_0.0019947_E_0.02_t_max_150_dt_0.010001','.mat'];
    
    load(filename)
   
%     J=(J_intra+J_inter)./sqrt(electric_field)/E_0/2;
    J=(J_intra+J_inter)./electric_field/E_0/2;
    [peak,loc]=findpeaks(J);
    peak_alpha(i)=max(peak);
    
    figure(i)
    plot(t,J,t(loc),peak,'or')
    
end
peak_alpha
peak_alpha=peak_alpha/peak_alpha(1)
save(['./peak_alpha_data/peak_alpha_electric_field_',electric,'_strategy_',strategy,'.mat'],'peak_alpha')
