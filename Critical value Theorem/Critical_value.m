% Given data
mu0   = 10;     % specified mean (mm)
xbar  = 9.95;   % sample mean (mm)
sigma = 0.2;    % population standard deviation (mm)
n     = 50;     % sample size
alpha = 0.01;   % significance level

% Test statistic (Z-test)
z = (xbar - mu0) / (sigma / sqrt(n));

% Critical value for two-tailed test
z_crit = norminv(1 - alpha/2);

% Critical limits
UCV = mu0 + z_crit * (sigma / sqrt(n));
LCV = mu0 - z_crit * (sigma / sqrt(n));

% Display results
fprintf('Upper Critical Value = %.4f\n', UCV);
fprintf('Lower Critical Value = %.4f\n', LCV);
fprintf('Z Critical Value     = %.4f\n', z_crit);
fprintf('Z Test Statistic    = %.4f\n', z);

% Decision
if xbar >= LCV && xbar <= UCV
    disp('Fail to Reject the Null Hypothesis.');
else
    disp('Reject the Null Hypothesis.');
end
