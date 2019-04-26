clear all;
close all;
% **************** Sun Part ****************

x1_1 = [312.5,343.75,375,377,379,430,432,434,497,499,500,625,641.25,644,...
    687.5,695,720,750,755,757];

x1_2 = [787,812.5,875,937.5,1000,1093.5,1125,1156.25,1250,1370,1375,1380,...
    1500,1562.5,1625,1687.5,1750,1812.5,1875,1937.5,2000,2031.25];

x1_3 = [2062.5,2125,2187.5,2250,2375,2500];

x1_tot = [x1_1,x1_2,x1_3];

y1_1 = [0,0.2,0.5,0.47,0.5,0.98,0.94,0.98,1.4,1.3,1.42,1.38,1.2,1.3,...
    1.05,1.2,0.98,1.1,0.4,1.05];

y1_2 = [1,0.6,0.78,0.2,0.6,0.55,0.1,0.35,0.47,0,0,0,0.25,0.24,0.2,0.17,...
    0.11,0,0,0,0.07,0.01];

y1_3 = [0.09,0.09,0.09,0.08,0.04,0];

y1_tot = [y1_1,y1_2,y1_3];

y1_rel = y1_tot / max(y1_tot);

% **************** Photodiode Part ****************

x2_tot = zeros(1,41);
j = 1;

for i = 400:10:800
    x2_tot(j) = i;
    j = j+1;
end

y2_1 = [0.1625,0.175,0.1875,0.2125,0.225,0.25,0.275,0.3125,0.35,0.4,...
    0.475,0.55,0.6,0.6625,0.725,0.775,0.825,0.8625,0.8875,0.9125,0.925];

y2_2 = [0.9375,0.95,0.9375,0.925,0.9,0.85,0.8125,0.75,0.6875,0.625,...
    0.5625,0.5,0.45,0.3875,0.3625,0.3125,0.275,0.25,0.225,0.2125];

y2_tot = [y2_1,y2_2];

% **************** Plot Part ****************

figure()
plot (x1_tot,y1_tot,'-k');
xlabel('Wavelength', 'FontSize', 14);
ylabel('Spectral Irradiance', 'FontSize', 14);
title('Solar Radiation Spectrum at Sea Level', 'FontSize', 16);
set(gca, 'fontsize', 12);

figure()
plot (x2_tot,y2_tot,'-k');
xlabel('Wavelength', 'FontSize', 14);
ylabel('Relative Spectral Response', 'FontSize', 14);
title('Relative Spectrum Response of Cadmium Sulfide Photodiode', 'FontSize', 16);
set(gca, 'fontsize', 12);

figure()
plot (x2_tot,y2_tot,'-b');
hold on;
plot (x1_tot,y1_rel,'-r');
xlabel('Wavelength', 'FontSize', 14);
ylabel('Relative Spectral Response', 'FontSize', 14);
title('Relative Spectrum Response - Comparison 1', 'FontSize', 16);
set(gca, 'fontsize', 12);
fig_leg = legend ('Cadmium Sulfide Photodiode','Solar Radiation at Sea Level');
set(fig_leg,'FontSize',10);
axis([400 800 0 1.1]);

figure()
plot (x2_tot,y2_tot,'-b');
hold on;
plot (x1_tot,y1_rel,'-r');
xlabel('Wavelength', 'FontSize', 14);
ylabel('Relative Spectral Response', 'FontSize', 14);
title('Relative Spectrum Response - Comparison 2', 'FontSize', 16);
set(gca, 'fontsize', 12);
fig_leg = legend ('Cadmium Sulfide Photodiode','Solar Radiation at Sea Level');
set(fig_leg,'FontSize',10);
