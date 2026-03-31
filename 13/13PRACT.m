clc;
clear;

disp('McCulloch-Pitts Net for ANDNOT function');

% Input patterns
x1 = [0 0 1 1];
x2 = [0 1 0 1];

% Target output for ANDNOT
z = [0 0 1 0];

y = [0 0 0 0];

con = 1;

while con
    disp('Enter weights');
    w1 = input('Weight w1 = ');
    w2 = input('Weight w2 = ');
    
    disp('Enter Threshold Value');
    theta = input('theta = ');
    
    % Calculate net input
    zin = x1 * w1 + x2 * w2;
    
    % Activation function
    for i = 1:4
        if zin(i) >= theta
            y(i) = 1;
        else
            y(i) = 0;
        end
    end
    
    disp('Output of Net:');
    disp(y);
    
    % Check if output matches target
    if isequal(y, z)
        con = 0;
    else
        disp('Net is not learning. Enter another set of weights and Threshold value');
    end
end

disp('----------------------------------');
disp('Final McCulloch-Pitts Net for ANDNOT');
disp(['Weight w1 = ', num2str(w1)]);
disp(['Weight w2 = ', num2str(w2)]);
disp(['Threshold = ', num2str(theta)]);