%% Creación del robot con Peter Corke
% Longitudes en m
L1 = 0.245;
L2 = 0.300;
L3 = 0.710;
L4 = 0.300;
L5 = 0.540;
L6 = 0.150;
L7 = 0.160;

L(1) = Link('revolute','a',0,'alpha',0,'d',L1,'offset',0,'modified','qlim',[-pi,pi]);
L(2) = Link('revolute','a',0,'alpha',pi/2,'d',-L2,'offset',pi/2,'modified','qlim',[-pi,pi]);
L(3) = Link('revolute','a',L3,'alpha',pi,'d',-L4,'offset',0,'modified','qlim',[-3*pi/2,3*pi/2]);
L(4) = Link('revolute','a',0,'alpha',-pi/2,'d',-L5,'offset',0,'modified','qlim',[-pi,pi]);
L(5) = Link('revolute','a',0,'alpha',pi/2,'d',L6,'offset',0,'modified','qlim',[-pi,pi]);
L(6) = Link('revolute','a',0,'alpha',-pi/2,'d',0,'offset',0,'modified','qlim',[-pi,pi]);

A_tool = transl(0,0,-L7)*round(trotx(pi),2);
robot_1 = SerialLink(L,'name','CRX-10iA');
robot_1.tool = A_tool;

%% Parte 1 Trajectory planning
%Definición del plano mediante una matriz de transformación
Tplano = transl(-alcance/2,0.5*alcance,0.5)*trotx(-45,'deg')*troty(pi);

alcance = 1.249;
L_traj_1 = 0.4*alcance;
L_traj_2 = 0.5*L_traj_1;

p1 = [0 0 0];
p2 = [L_traj_1 0 0];
p3 = [L_traj_1 L_traj_2 0];
p4 = [0 L_traj_2 0];

%% Parte 2
% Pose seleccionada: T1
syms q1 q2 q3 q4 q5 q6
assume([q1 q2 q3 q4 q5 q6],'real')
A_0_1 = L(1).A(q1);
A_1_2 = L(2).A(q2);
A_2_3 = L(3).A(q3);
A_3_4 = L(4).A(q4);
A_4_5 = L(5).A(q5);
A_5_6 = L(6).A(q6);

T_0_tcp = A_0_1*A_1_2*A_2_3*A_3_4*A_4_5*A_5_6*A_tool;

x = T_0_tcp(1,4);
y = T_0_tcp(2,4);
z = T_0_tcp(3,4);

R = T_0_tcp(1:3,1:3);

r1 = R(1,:);
r2 = R(2,:);
r3 = R(3,:);

fila1 = [diff(x,q1) diff(x,q2) diff(x,q3) diff(x,q4) diff(x,q5) diff(x,q6)];
fila2 = [diff(y,q1) diff(y,q2) diff(y,q3) diff(y,q4) diff(y,q5) diff(y,q6)];
fila3 = [diff(z,q1) diff(z,q2) diff(z,q3) diff(z,q4) diff(z,q5) diff(z,q6)];

% obtenemos filas a partir del despeje de las componentes de la velocidad
% angular
r1_t = r1';
r2_t = r2';
r3_t = r3';
fila4 = r2*[diff(r3_t,q1) diff(r3_t,q2) diff(r3_t,q3) diff(r3_t,q4) diff(r3_t,q5) diff(r3_t,q6)];
fila5 = r3*[diff(r1_t,q1) diff(r1_t,q2) diff(r1_t,q3) diff(r1_t,q4) diff(r1_t,q5) diff(r1_t,q6)];
fila6 = r1*[diff(r2_t,q1) diff(r2_t,q2) diff(r2_t,q3) diff(r2_t,q4) diff(r2_t,q5) diff(r2_t,q6)];

J_manual = [fila1;fila2;fila3;fila4;fila5;fila6];
J_manual = double(subs(J_manual,[q1 q2 q3 q4 q5 q6],conf1))

J_auto = robot_1.jacob0(conf1)

% Velocidades de articulación
Vh = [0.1;0.2;0.05]; %mm/s
omega_h = [5;10;-5]; %rad/s

q_punto = J_manual\[Vh;omega_h] %rad/s
%% Parte 3 - Integración
% 1

% 2

%Cálculo del perímetro
%Segmentos rectos
r = 0.05;
d1 = abs(p2(1) - p1(1)) - 2*r;
d2 = abs(p3(2) - p2(2)) - 2*r;
d3 = abs(p4(1) - p3(1)) - 2*r;
d4 = abs(p1(2) - p4(2)) - 2*r;
%Cuarto de circunferencia para cada esquina
s = pi/2 * r ;
%Centros de las circunferencias
c1 = p1 + [r r 0];
c2 = p2 + [-r r  0];
c3 = p3 + [-r -r  0];
c4 = p4 + [r -r  0];
perimetro = d1 + d2 + d3 + d4 + 4*s;
%Cálculo del paso entre punto y punto
total_puntos = 60;
paso = perimetro / total_puntos;
paso_ang = paso / r;

%Diseño de segmentos rectos y curvos
traj_d1 = [p1(1)+r:paso:p2(1)-r]';
zeros_ = zeros(length(traj_d1),1);
traj_d1 = [traj_d1, zeros_+p1(2), zeros_];

angulos = (-pi/2:paso_ang:0)';
angulos = angulos(2:end,:);
zeros_ = zeros(length(angulos),1);
traj_s1 = [traj_d1(end,1) + r*cos(angulos), traj_d1(end,2)+ r*sin(angulos) + r,zeros_];

p2 = traj_s1(end,:) - [0 r 0];
traj_d2 = [p2(2)+r:paso:p3(2)-r]';
zeros_ = zeros(length(traj_d2),1);
traj_d2 = [zeros_+p2(1),traj_d2, zeros_];

angulos = (0:paso_ang:pi/2)';
angulos = angulos(2:end,:);
zeros_ = zeros(length(angulos),1);
traj_s2 = [traj_d2(end,1) - r + r*cos(angulos),traj_d2(end,2)+ r*sin(angulos),zeros_];

p3 = traj_s2(end,:) + [r 0 0];
traj_d3 = [p3(1)-r:-paso:p4(1)+r]';
zeros_ = zeros(length(traj_d3),1);
traj_d3 = [traj_d3, zeros_+p3(2), zeros_];

angulos = (pi/2:paso_ang:pi)';
angulos = angulos(2:end,:);
zeros_ = zeros(length(angulos),1);
traj_s3 = [traj_d3(end,1) + r*cos(angulos),traj_d3(end,2)+ r*sin(angulos)-r,zeros_];

p4 = traj_s3(end,:) + [0 r 0];
traj_d4 = [p4(2)-r:-paso:p1(2)+r- paso]';
zeros_ = zeros(length(traj_d4),1);
traj_d4 = [zeros_+p4(1),traj_d4, zeros_];

angulos = (pi:paso_ang:3*pi/2)';
angulos = angulos(2:end,:);
zeros_ = zeros(length(angulos),1);
traj_s4 = [traj_d4(end,1) + r*cos(angulos) + r, traj_d4(end,2)+ r*sin(angulos) ,zeros_];

trayectoria = [traj_d1; traj_s1; traj_d2; traj_s2; traj_d3; traj_s3; traj_d4; traj_s4];

%Gráfica de la trayectoria resultante
figure()
scatter(trayectoria(:,1),trayectoria(:,2))
xlabel("x [m]")
ylabel("y [m]")
title("Trayectoria planteada sobre el plano XY")

% 3 
%Cálculo de configuraciones 
configuraciones = zeros(length(trayectoria),6);
for i=1:length(trayectoria)
    %Matriz de transformación de cada punto
    T= Tplano*transl(trayectoria(i,:));
    %Configuración mediante cinemática inversa
    configuraciones(i,:) = robot_1.ikunc(T);
end

% Gráfica de configuraciones por viapoint
figure()
hold on
for i=1:6
    plot(configuraciones(:,i))
end
grid()
legend(["q1","q2","q3","q4","q5","q6"])
xlabel("Viapoint")
ylabel("posición articular [rad]")
title("Configuraciones durante la trayectoria")

% 4




%% Resultado
puntos = zeros(length(trayectoria),3);
for i=1:length(trayectoria)
    T= Tplano*transl(trayectoria(i,:));
    puntos(i,:) = T(1:3,4);
end

figure()
view([154,21])
xlim([-2 1])
ylim([-0.5 2])
zlim([-1 1])

hold on
for i=1:length(configuraciones)  
    plot3(puntos(i,1),puntos(i,2),puntos(i,3),'c.')
    robot_1.plot(configuraciones(i,:))
end