% �������
R = [1 0; 0 2];
% ��о���
L = [1 -1; -1 2];
% ���ݾ���
C = [1 0; 0 0.5];
% �ް��ѹԴ����
V = [1; -1];
% ���Ƶ�ѹԴ�ľ���
A = [1 0; 0 0];
B = [0 0; 0 1];

[voltages, currents, powers] = solve_circuit(R, L, C, V, A, B);
disp('��ѹ��');
disp(voltages);
disp('������');
disp(currents);
disp('���ʣ�');
disp(powers);