function  C_0_t = C_0_t_map(t,p_x,p_y)
global electric_field
C_0_t=1/sqrt(2).*electric_field.*(-p_y)./epsilon_p_t_map(t,p_x,p_y).^2;
end