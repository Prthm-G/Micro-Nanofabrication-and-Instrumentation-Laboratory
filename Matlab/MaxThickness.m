% Define the range for Si thickness
thicknessRange = 0.1e-6:1e-9:0.5e-6;  % Varying thickness from 100 nm to 500 nm in steps of 1 nm

% Initialize an array to store the number of modes for each thickness
numModes = zeros(size(thicknessRange));

% Loop through each thickness and determine the number of TE modes
for idx = 1:length(thicknessRange)
    t = thicknessRange(idx);
    [nTE, ~] = wg_1D_analytic(1.55e-6, t, 1.444, 3.47, 1.444);
    numModes(idx) = length(nTE);
end

% Find the thickness where more than one TE mode is supported
maxThickness = thicknessRange(find(numModes > 1, 1));
maxThickness_nm = maxThickness * 1e9;  % Convert to nm

disp(['The maximum Si thickness before supporting more than one TE mode is: ', num2str(maxThickness_nm), ' nm']);
