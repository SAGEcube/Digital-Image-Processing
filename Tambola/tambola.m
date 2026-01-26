clc;
clear;

ticket = zeros(3,9);   % 3x9 Tambola ticket

% Column-wise number ranges
ranges = {1:9, 10:19, 20:29, 30:39, 40:49, ...
          50:59, 60:69, 70:79, 80:90};

rng('shuffle'); % random seed

% Step 1: Decide how many numbers per column (1 or 2 mostly)
colCount = [1 2 2 1 2 2 1 2 2]; % sums to 15

for c = 1:9
    nums = datasample(ranges{c}, colCount(c), 'Replace', false);
    rows = randperm(3, colCount(c));
    for k = 1:colCount(c)
        ticket(rows(k), c) = nums(k);
    end
end

% Step 2: Ensure each row has exactly 5 numbers
for r = 1:3
    while nnz(ticket(r,:)) > 5
        cols = find(ticket(r,:) ~= 0);
        c = cols(randi(length(cols)));
        ticket(r,c) = 0;
    end
end

disp('Tambola Ticket:');
disp(ticket);
