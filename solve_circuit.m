function [voltages, currents, powers] = solve_circuit(R, L, C, V, A, B)
    % R: �������
    % L: ��о���
    % C: ���ݾ���
    % V: �ް��ѹԴ����
    % A, B: ���Ƶ�ѹԴ�ľ���
    
    % �����·�ĵ��ɾ���Y
    Y = inv(R) + 1i * A' * L * A + 1i * B' * C * B;
    
    % �����·�ĵ�������I
    I = inv(Y) * V;
    
    % �����·�ĵ�ѹ����V
    V = R * I - 1i * A' * L * B * I;
    
    % ����Ԫ������
    powers = real(V .* conj(I));
    
    % ���ؽ��
    voltages = V;
    currents = I;
end