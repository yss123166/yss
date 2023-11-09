function [voltages, currents, powers] = solve_circuit(R, L, C, V, A, B)
    % R: 电阻矩阵
    % L: 电感矩阵
    % C: 电容矩阵
    % V: 无伴电压源向量
    % A, B: 控制电压源的矩阵
    
    % 计算电路的导纳矩阵Y
    Y = inv(R) + 1i * A' * L * A + 1i * B' * C * B;
    
    % 计算电路的电流向量I
    I = inv(Y) * V;
    
    % 计算电路的电压向量V
    V = R * I - 1i * A' * L * B * I;
    
    % 计算元件功率
    powers = real(V .* conj(I));
    
    % 返回结果
    voltages = V;
    currents = I;
end