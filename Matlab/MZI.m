% Constants
n = 1.45; % Initial refractive index of waveguide (example value)
dn_dT = 1e-5; % Thermo-optic coefficient (example value)
lambda = 1.55e-6; % Wavelength in meters
L = 5e-3; % Length of heated section in meters (example value)
I0 = 1; % Input intensity (normalized to 1 for simplicity)

% Input: Temperature change
deltaT = input('Enter the temperature change (in Celsius): ');

% Calculate change in refractive index due to thermo-optic effect
delta_n = n * deltaT * dn_dT;

% Calculate phase change
delta_phi = (2*pi/lambda) * delta_n * L;

% Calculate output intensity using MZI transfer function
I = I0 * cos(delta_phi/2)^2;

% Display the result
fprintf('Output Intensity: %.2f\n', I);
