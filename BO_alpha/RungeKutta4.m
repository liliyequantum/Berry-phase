function x = RungeKutta4(t,x,p_x,p_y)
   
    step_size=t(2)-t(1);
    
    k_1=f(t(1),x,p_x,p_y);
    k_2=f(t(1)+0.5.*step_size,x+0.5.*step_size.*k_1,p_x,p_y);
    k_3=f(t(1)+0.5.*step_size,x+0.5.*step_size.*k_2,p_x,p_y);
    k_4=f(t(1)+step_size,x+step_size.*k_3,p_x,p_y);

    x=x+1/6.*step_size.*(k_1+2.*k_2+2.*k_3+k_4);
        
end