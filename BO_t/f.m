function y = f(t,x,p_x,p_y)
   
    global alpha_parameter
    
    epsilon_p_t=epsilon_p_t_map(t,p_x,p_y);
    C_0_t=C_0_t_map(t,p_x,p_y);
    sin_2phi=2.*alpha_parameter./(1+alpha_parameter.^2);
    cos_2phi=(1-alpha_parameter.^2)./(1+alpha_parameter.^2);
    y = zeros(length(p_x),6);
    y(:,1) = -(epsilon_p_t+1./sqrt(2).*C_0_t.*cos_2phi).*x(:,4)-C_0_t.*sin_2phi.*x(:,5)-1./sqrt(2).*C_0_t.*cos_2phi.*x(:,6);
    y(:,2) = -C_0_t.*sin_2phi.*x(:,4)+sqrt(2).*C_0_t.*cos_2phi.*x(:,5)-C_0_t.*sin_2phi.*x(:,6);
    y(:,3) = -1/sqrt(2).*C_0_t.*cos_2phi.*x(:,4)-C_0_t.*sin_2phi.*x(:,5)-(-epsilon_p_t+1/sqrt(2).*C_0_t.*cos_2phi).*(x(:,6));
    y(:,4) = (epsilon_p_t+1./sqrt(2).*C_0_t.*cos_2phi).*x(:,1)+C_0_t.*sin_2phi.*x(:,2)+1./sqrt(2).*C_0_t.*cos_2phi.*x(:,3);
    y(:,5) = C_0_t.*sin_2phi.*x(:,1)-sqrt(2).*C_0_t.*cos_2phi.*x(:,2)+C_0_t.*sin_2phi.*x(:,3);
    y(:,6) = 1/sqrt(2).*C_0_t.*cos_2phi.*x(:,1)+C_0_t.*sin_2phi.*x(:,2)+(-epsilon_p_t+1/sqrt(2).*C_0_t.*cos_2phi).*x(:,3);
end