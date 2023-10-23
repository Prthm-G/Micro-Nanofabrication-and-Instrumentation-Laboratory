% Given data
n1 = 2.5; % effective index at 1.5 microns
n2 = 2.4; % effective index at 1.6 microns
lambda1 = 1.5; % wavelength in microns
lambda2 = 1.6; % wavelength in microns
lambda_target = 1.55; % desired wavelength in microns

% Calculate dn/dlambda
dn_dlambda = (n2 - n1) / (lambda2 - lambda1);

% Calculate effective index at 1.55 microns using linear interpolation
n_target = n1 + (lambda_target - lambda1) * dn_dlambda;

% Calculate group index
ng = n_target - lambda_target * dn_dlambda;

% Display the result
fprintf('The group index at 1.55 microns is: %.2f\n', ng);
% Given data
lambda = 1.55e-6; % wavelength in meters
ng = 4.2; % group index
deltaL = 100e-6; % path length mismatch in meters

% Calculate FSR
FSR = (lambda^2) / (deltaL * ng);

% Convert FSR from meters to nanometers
FSR_nm = FSR * 1e9;

% Display the result
fprintf('The Free Spectral Range (FSR) is: %.2f nm\n', FSR_nm);

