% ------------------------------------
% Arithmetic Coding - MATLAB
% ------------------------------------
% Author: Sandesh Jat
% Description:
% This program performs arithmetic encoding
% for a given symbol sequence and probability model.

clc;
clear;

%% Input symbols and probabilities
symbols = ['A', 'B', 'C'];          % Alphabet
prob    = [0.5, 0.3, 0.2];           % Probabilities (must sum to 1)
sequence = 'ABCA';                  % Message to encode

%% Step 1: Compute cumulative probability ranges
low  = zeros(1, length(prob));
high = zeros(1, length(prob));

low(1)  = 0;
high(1) = prob(1);

for i = 2:length(prob)
    low(i)  = high(i-1);
    high(i) = low(i) + prob(i);
end

%% Step 2: Arithmetic Encoding
L = 0;    % Initial lower bound
H = 1;    % Initial upper bound

for k = 1:length(sequence)
    idx = find(symbols == sequence(k));  % Symbol index
    
    range = H - L;
    H = L + range * high(idx);
    L = L + range * low(idx);
    
    fprintf('After symbol %c: [%.6f , %.6f)\n', sequence(k), L, H);
end

%% Step 3: Final code value
code = (L + H) / 2;

fprintf('\nFinal Arithmetic Code = %.6f\n', code);
