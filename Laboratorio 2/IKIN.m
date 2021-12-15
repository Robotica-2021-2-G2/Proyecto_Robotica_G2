function q_solution = IKIN(T)
    T = round(T,4);
    p = T(1:3,4);
    R = T(1:3,1:3);
    n = R(1:3,1);
    o = R(1:3,2);
    a = R(1:3,3);
    L1 = 2.45;
    L2 = 3.00;
    L3 = 7.10;
    L4 = 3.00;
    L5 = 5.40;
    L6 = 1.50;
    L7 = 1.60;
    
    % La idea es iterar sobre q_6
    theta_6 = 0;
    diferentes = true;
    error = 0.01*pi/180; % Error de 0.01 grados
    iterations = 0;
    while diferentes
       %Posición del sistema 4
        R_a_theta6 = angvec2r(theta_6,a);
        p_c = p - L7*a - L6*R_a_theta6*o;

        % Coordenadas auxiliares
        cordA = sqrt(p_c(1)^2+p_c(2)^2);
        cordB = p_c(3)-L1;

        % Primeras tres articulaciones
        q_3 = asin((cordA^2+cordB^2-(L3^2+L5^2))/(2*L3*L5));
        q_2 = atan2(cordA,cordB) - atan2(L5*cos(q_3),L3+L5*sin(q_3));
        q_1 = atan2(-p_c(2),-p_c(1));

        % Ángulos de Euler
        R_0_1 = rotz(q_1);
        R_1_2 = round(rotx(pi/2),4)*rotz(q_2+pi/2);
        R_2_3 = round(rotx(pi),4)*rotz(q_3);
        R_0_3 = R_0_1*R_1_2*R_2_3;

        R_3_tcp = R_0_3'*R;

        R_c = round(rotx(pi/2),4)'*R_3_tcp;
        n_c = R_c(1:3,1);
        o_c = R_c(1:3,2);
        a_c = R_c(1:3,3);
        
        psi = atan2(-o_c(3),n_c(3));
    
        % Últimas articulación   
        q_6 = -psi;
        if abs(q_6-theta_6) <= error
            diferentes = false;
        elseif theta_6 >= 2*pi
            diferentes = false;
            disp("No convirgió")
        else
            theta_6 = theta_6 + 0.01*pi/180;
        end
        iterations = iterations + 1;
    end
    
    phi = atan2(-o_c(1)*cos(psi)-n_c(1)*sin(psi),o_c(2)*cos(psi)+n_c(2)*sin(psi));
    theta = atan2(o_c(3)*sin(psi)-n_c(3)*cos(psi),a_c(3));
    
    q_4 = -phi;
    q_5 = theta;
    
    q_solution = [q_1 q_2 q_3 q_4 q_5 q_6];
end