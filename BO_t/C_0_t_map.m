function  C_0_t = C_0_t_map(t,p_x,p_y)
global electric_field
numerator=sqrt(3).*electric_field.*sin(3/2.*(-p_y)).*sin(sqrt(3)./2.*(p_x-electric_field.*t));
denominator=1+4.*cos(sqrt(3)/2.*(p_x-electric_field.*t)).*(cos(3/2.*p_y)+cos(sqrt(3)/2.*(p_x-electric_field.*t)));
C_0_t=1/sqrt(2).*numerator./denominator;
end