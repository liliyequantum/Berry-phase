clear

electric_field={'0.002','0.004','0.008','0.03'};
t=zeros()
E_0=pi.^2/4;

load(['Bloch_Oscillation_alpha_T3_alpha_0_dp_x_0.0020162_dp_y_0.0019947_E_',electric_field{1},'_t_max_99.9911_dt_0.01.mat'])
t_1=t;
J_1=(J_intra+J_inter)./electric_field/E_0/2;


save('./plot_data/alpha_0_time_1000.mat','t_1','J_1','t_2','J_2','t_3','J_3','t_4','J_4')

