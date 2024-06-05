% function [J_p_inter,up_flat,up_lower,flat_lower] = J_p_inter_map(x,t,p_x,p_y)
function J_p_inter = J_p_inter_map(x,J_12,J_13,J_23)           
%"""not less than two of the array length"""

alpha=x(:,4)+1j*x(:,1);
gamma=x(:,5)+1j*x(:,2);
beta=x(:,6)+1j*x(:,3);
J_p_inter=2.*real(J_12.*conj(alpha).*gamma+J_23.*conj(gamma).*beta+J_13.*conj(alpha).*beta);
% up_flat=2.*real(J_12.*conj(alpha).*gamma);
% up_lower=2.*real(J_13.*conj(alpha).*beta);
% flat_lower=2.*real(J_23.*conj(gamma).*beta);
end