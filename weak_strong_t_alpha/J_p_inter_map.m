function [J_p_inter,up_flat,up_lower,flat_lower] = J_p_inter_map(x,t,p_x,p_y)
             
%"""not less than two of the array length"""
global alpha_parameter
global xi
epsilon_p_t=epsilon_p_t_map(t,p_x,p_y);
sin_theta=-p_y./epsilon_p_t;
sin_2phi=2.*alpha_parameter./(1+alpha_parameter.^2);
cos_2phi=(1-alpha_parameter.^2)./(1+alpha_parameter.^2);
J_12=-xi.*1j./sqrt(2).*sin_2phi.*sin_theta;
J_13=-xi.*1j.*cos_2phi.*sin_theta;
J_23=-xi.*1j./sqrt(2).*sin_2phi.*sin_theta;
alpha=x(:,4)+1j*x(:,1);
gamma=x(:,5)+1j*x(:,2);
beta=x(:,6)+1j*x(:,3);
J_p_inter=2.*real(J_12.*conj(alpha).*gamma+J_23.*conj(gamma).*beta+J_13.*conj(alpha).*beta);
up_flat=2.*real(J_12.*conj(alpha).*gamma);
up_lower=2.*real(J_13.*conj(alpha).*beta);
flat_lower=2.*real(J_23.*conj(gamma).*beta);
end