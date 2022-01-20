% Longitudes en m
L1 = 0.245;
L2 = 0.300;
L3 = 0.710;
L4 = 0.300;
L5 = 0.540;
L6 = 0.150;
L7 = 0.160;

%% Peter Corke
L(1) = Link('revolute','a',0,'alpha',0,'d',L1,'offset',0,'modified','qlim',[-pi,pi]);
L(2) = Link('revolute','a',0,'alpha',pi/2,'d',-L2,'offset',pi/2,'modified','qlim',[-pi,pi]);
L(3) = Link('revolute','a',L3,'alpha',pi,'d',-L4,'offset',0,'modified','qlim',[-3*pi/2,3*pi/2]);
L(4) = Link('revolute','a',0,'alpha',-pi/2,'d',-L5,'offset',0,'modified','qlim',[-pi,pi]);
L(5) = Link('revolute','a',0,'alpha',pi/2,'d',L6,'offset',0,'modified','qlim',[-pi,pi]);
L(6) = Link('revolute','a',0,'alpha',-pi/2,'d',0,'offset',0,'modified','qlim',[-pi,pi]);

A_tool = transl(0,0,-L7)*round(trotx(pi),2);
robot_1 = SerialLink(L,'name','CRX-10iA');
robot_1.tool = A_tool;

%% Trajectory planning
alcance = 1.249;
L_traj_1 = 0.4*alcance;
L_traj_2 = 0.5*L_traj_1;

vector = [0 1 1];
Tplano = trotx(-45,'deg');

p1 = [0 0 0.5];
p1_5 = [L_traj_1/2 0 0.5];
p2 = [L_traj_1 0 0.5];
p3 = [L_traj_1 L_traj_2 0.5];
p3_5 = [L_traj_1/2 L_traj_2 0.5];
p4 = [0 L_traj_2 0.5];

% Poses a partir de puntos

% En plano XY
T1= transl(p1+[-alcance/4,0.3*alcance,0])*troty(pi);
T1_5 = transl(p1_5+[-alcance/4,0.3*alcance,0])*troty(pi);
T2= transl(p2+[-alcance/4,0.3*alcance,0])*troty(pi);
T3= transl(p3+[-alcance/4,0.3*alcance,0])*troty(pi);
T3_5 = transl(p3_5+[-alcance/4,0.3*alcance,0])*troty(pi);
T4= transl(p4+[-alcance/4,0.3*alcance,0])*troty(pi);

% En plano [0,1,1]
T1 = Tplano*T1;
T1_5 = Tplano*T1_5;
T2 = Tplano*T2;
T3 = Tplano*T3;
T3_5 = Tplano*T3_5;
T4 = Tplano*T4;

% Cinemática inversa para cada punto
conf1 = robot_1.ikunc(T1);
conf1_5 = robot_1.ikunc(T1_5);
conf2 = robot_1.ikunc(T2);
conf3 = robot_1.ikunc(T3);
conf3_5 = robot_1.ikunc(T3_5);
conf4 = robot_1.ikunc(T4);

tseg = [1,1,1,1,1,1];
q0 = conf1;
dt = 0.1;
p = [conf1_5;conf2;conf3;conf3_5;conf4;conf1];
tacc = 1/6*tseg;

traj = mstraj(p,[],tseg,q0,dt,tacc);

figure()
view([154,21])
xlim([-2 1])
ylim([-0.5 2])
zlim([-1 1])
hold on
for i=1:length(traj)  
    punto = robot_1.fkine(traj(i,:));
    plot3(punto(1,4),punto(2,4),punto(3,4),'c.')
    robot_1.plot(traj(i,:))
end

%% Parte 2
% Pose seleccionada: T1
J_auto = robot_1.jacob0(conf1)

% Velocidades de articulación
Vh = [0.1;0.2;0.05]; %mm/s
omega_h = [5;10;-5]; %rad/s

q_punto = J_auto\[Vh;omega_h] %rad/s