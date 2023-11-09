% 电阻矩阵
R = [1 0; 0 2];
% 电感矩阵
L = [1 -1; -1 2];
% 电容矩阵
C = [1 0; 0 0.5];
% 无伴电压源向量
V = [1; -1];
% 控制电压源的矩阵
A = [1 0; 0 0];
B = [0 0; 0 1];

[voltages, currents, powers] = solve_circuit(R, L, C, V, A, B);
disp('电压：');
disp(voltages);
disp('电流：');
disp(currents);
disp('功率：');
disp(powers);