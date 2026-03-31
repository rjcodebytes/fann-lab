clc;
clear;
close all;

% Define input range
x = -10:0.1:10;

% Compute exponential
tmp = exp(-x);

% Activation functions
y1 = 1 ./ (1 + tmp);          % Sigmoid (Logistic)
y2 = (1 - tmp) ./ (1 + tmp);  % Hyperbolic Tangent (tanh)
y3 = x;                       % Identity

% -------- Plotting -------- %

% Sigmoid Function
subplot(2,3,1);
plot(x, y1, 'LineWidth', 2);
grid on;
axis([min(x) max(x) -2 2]);
title('Sigmoid (Logistic) Function');
xlabel('Input (x)');
ylabel('Output (y)');
axis square;

% Tanh Function
subplot(2,3,2);
plot(x, y2, 'LineWidth', 2);
grid on;
axis([min(x) max(x) -2 2]);
title('Hyperbolic Tangent Function');
xlabel('Input (x)');
ylabel('Output (y)');
axis square;

% Identity Function
subplot(2,3,3);
plot(x, y3, 'LineWidth', 2);
grid on;
axis([min(x) max(x) min(x) max(x)]);
title('Identity Function');
xlabel('Input (x)');
ylabel('Output (y)');
axis square;