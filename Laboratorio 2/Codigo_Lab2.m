L1 = 2.45;
L2 = 3.00;
L3 = 7.10;
L4 = 3.00;
L5 = 5.40;
L6 = 1.50;
L7 = 1.60;

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

%% Funciones de cinemática inversa
T1 = robot_1.fkine([0 0 0 0 0 0])
q_sol_1 = robot_1.ikine(T1)
q_sol_2 = robot_1.ikunc(T1)
q_sol_3 = robot_1.ikcon(T1)
q_sol_5 = robot_1.ikine6s(T1)

%% Robotics System Toolbox
%Eslabones
body1 = rigidBody('body1');
body2 = rigidBody('body2');
body3 = rigidBody('body3');
body4 = rigidBody('body4');
body5 = rigidBody('body5');
body6 = rigidBody('body6');

% Articulaciones
jnt1 = rigidBodyJoint('jnt1','revolute');
jnt1.HomePosition = 0;
jnt2 = rigidBodyJoint('jnt2','revolute');
jnt2.HomePosition = pi/2;
jnt3 = rigidBodyJoint('jnt3','revolute');
jnt3.HomePosition = 0;
jnt4 = rigidBodyJoint('jnt4','revolute');
jnt4.HomePosition = 0;
jnt5 = rigidBodyJoint('jnt5','revolute');
jnt5.HomePosition = 0;
jnt6 = rigidBodyJoint('jnt6','revolute');
jnt6.HomePosition = 0;

% Transformaciones fijas
tform1 = axang2tform([1 0 0 0])*trvec2tform([0,0,0])*trvec2tform([0,0,L1]);
tform2 = axang2tform([1 0 0 pi/2])*trvec2tform([0,0,0])*trvec2tform([0,0,-L2]);
tform3 = axang2tform([1 0 0 pi])*trvec2tform([L3,0,0])*trvec2tform([0,0,-L4]);
tform4 = axang2tform([1 0 0 -pi/2])*trvec2tform([0,0,0])*trvec2tform([0,0,-L5]);
tform5 = axang2tform([1 0 0 pi/2])*trvec2tform([0,0,0])*trvec2tform([0,0,L6]);
tform6 = axang2tform([1 0 0 -pi/2])*trvec2tform([0,0,0])*trvec2tform([0,0,0]);

setFixedTransform(jnt1,tform1);
setFixedTransform(jnt2,tform2);
setFixedTransform(jnt3,tform3);
setFixedTransform(jnt4,tform4);
setFixedTransform(jnt5,tform5);
setFixedTransform(jnt6,tform6);

% Asignación de eslabones con articulaciones
body1.Joint = jnt1;
body2.Joint = jnt2;
body3.Joint = jnt3;
body4.Joint = jnt4;
body5.Joint = jnt5;
body6.Joint = jnt6;

% Creación del robot
robot_2 = rigidBodyTree;

% Añadimos los eslabones
addBody(robot_2,body1,'base');
addBody(robot_2,body2,'body1');
addBody(robot_2,body3,'body2');
addBody(robot_2,body4,'body3');
addBody(robot_2,body5,'body4');
addBody(robot_2,body6,'body5');

% Herramienta
tool = rigidBody('tool');
tform7 = axang2tform([1 0 0 pi])*trvec2tform([0,0,L7]);
setFixedTransform(tool.Joint,tform7);
addBody(robot_2,tool,'body6');

%%
ik = inverseKinematics('RigidBodyTree',robot_2);
[configSol,solInfo] = ik('tool',T1,[pi/180,pi/180,pi/180,0.01,0.01,0.01],robot_2.homeConfiguration)

%% 4 posturas
T1 = robot_1.fkine([0 0 0 0 0 0]);
RPY1 = tr2rpy(T1,'deg');
pose1 = [T1(1,4),T1(2,4),T1(3,4),RPY1]

T2 = robot_1.fkine([0 0 0 pi/2 0 0]);
RPY2 = tr2rpy(T2,'deg');
pose2 = [T2(1,4),T2(2,4),T2(3,4),RPY2]

T3 = robot_1.fkine([pi 0 0 0 0 0]);
RPY3 = tr2rpy(T3,'deg');
pose3 = [T3(1,4),T3(2,4),T3(3,4),RPY3]

T4 = robot_1.fkine([pi 0 0 pi/2 pi/2 0]);
RPY4 = tr2rpy(T4,'deg');
pose4 = [T4(1,4),T4(2,4),T4(3,4),RPY4]

%% Cinemática inversa de las posturas
q_solution1 = rad2deg(IKIN(T1))
q_solution2 = rad2deg(IKIN(T2))
q_solution3 = rad2deg(IKIN(T3))
q_solution4 = rad2deg(IKIN(T4))


