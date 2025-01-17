% function [J_p_intra,J_p_upper,J_p_flat] = J_p_intra_map(x,t,p_x,p_y)
function J_p_intra = J_p_intra_map(x,J_11)

alpha_2=x(:,4).^2+x(:,1).^2;
gamma_2=x(:,5).^2+x(:,2).^2;
J_p_intra=J_11.*(2.*alpha_2+gamma_2);
% J_p_upper=-(p_x-electric_field.*t)./epsilon_p_t.*(2.*alpha_2);
% J_p_flat=-(p_x-electric_field.*t)./epsilon_p_t.*gamma_2;
end
