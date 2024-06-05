% clear
% 
% Alpha_parameter=0:0.1:1;
% N=length(Alpha_parameter);
% inter_band=zeros(N,1);
% up_flat_band=zeros(N,1);
% up_lower_band=zeros(N,1);
% flat_lower_band=zeros(N,1);
% for i=1:1:N
% alpha_parameter=Alpha_parameter(i);
% filename=['./data_weak/alpha_T3_xi_1_alpha_',num2str(alpha_parameter),'_p_max_8_p_min_0.005_dp_0.010006_E_0.0004_t_max_5_dt_0.01002.mat'];
% load(filename)
% inter_band(i,1)=J_inter(end);
% up_flat_band(i,1)=J_up_flat(end);
% up_lower_band(i,1)=J_up_lower(end);
% flat_lower_band(i,1)=J_flat_lower(end);
% end
% 
% save('./data_weak/converge_data.mat','inter_band','up_flat_band','up_lower_band','flat_lower_band','electric_field','t_max')
%


% clear
% 
% Alpha_parameter=0:0.1:1;
% N=length(Alpha_parameter);
% intra_band=zeros(N,1);
% upper_band=zeros(N,1);
% flat_band=zeros(N,1);
% for i=1:1:N
% alpha_parameter=Alpha_parameter(i);
% filename=['./data_strong/alpha_T3_xi_1_alpha_',num2str(alpha_parameter),'_p_max_8_p_min_0.0001_dp_0.010012_E_0.4096_t_max_10_dt_0.01001.mat'];
% load(filename)
% intra_band(i,1)=J_intra(end);
% upper_band(i,1)=J_upper(end);
% flat_band(i,1)=J_flat(end);
% end
% 
% save('./data_strong/converge_data.mat','intra_band','upper_band','flat_band','electric_field','t_max')
% 

% clear
% close all
% color_blue = [31, 119, 180]/255;
% color_red = [214, 39, 40]/255;
% color_yellow = [255, 127, 14]/255;
% color_purple = [148, 103, 189]/255;
% color_green = [44, 160, 44]/255;
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 

