function epsilon_p_t = epsilon_p_t_map(t,p_x,p_y)
global electric_field
epsilon_p_t=sqrt((p_x-electric_field.*t).^2+p_y.^2);
end
