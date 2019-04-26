close all;
clear all;

% **************** Conversion Parameter ****************

conv = 1.464128843338 * 10^(-3);

res = [0,157.3,238,324,462,623,1200];

% **************** Lux Level 1 = 0% ****************

i_1 = [0.913,0.862,0.831,0.755,0.666,0.616,0];

v_1 = [0,0.17,0.21,0.26,0.303,0.337,0.716];

p_1 = v_1 .* i_1;

lux_1 = 53;

% **************** Lux Level 2 = 25% ****************

i_2 = [6.22,6.16,6.04,5.62,5.06,4.53,0];

v_2 = [0,1.045,1.39,2.08,2.56,2.92,4.85];

p_2 = v_2 .* i_2;

lux_2 = 112;

% **************** Lux Level 3 = 50% ****************

i_3 = [17.84,17.70,15.84,14.70,12.22,10.74,0];

v_3 = [0,2.78,4.19,5.37,6.33,6.84,10.39];

p_3 = v_3 .* i_3;

lux_3 = 850;

% **************** Lux Level 4 = 75% ****************

i_4 = [26.91,26.7,24.1,21.9,18.05,15.23,0];

v_4 = [0,4.3,6.31,7.05,8.51,9.33,13.12];

p_4 = v_4 .* i_4;

lux_4 = 2420;

% **************** Lux Level 5 = 100% ****************

i_5 = [32.4,31.8,28.3,25.2,20.9,17.24,0];

v_5 = [0,5.07,6.83,8.16,9.87,10.82,14.33];

p_5 = v_5 .* i_5;

lux_5 = 3100;

% **************** Plotting I-V Curves ****************

fig_id = figure();;
plot (v_1,-i_1,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
title(['I-V Curve of Photodiode at Light Emittance = ',num2str(lux_1),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_2,-i_2,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
title(['I-V Curve of Photodiode at Light Emittance = ',num2str(lux_2),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_3,-i_3,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
title(['I-V Curve of Photodiode at Light Emittance = ',num2str(lux_3),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_4,-i_4,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
title(['I-V Curve of Photodiode at Light Emittance = ',num2str(lux_4),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_5,-i_5,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
title(['I-V Curve of Photodiode at Light Emittance = ',num2str(lux_5),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_1,-i_1,'-k');
hold on;
plot (v_2,-i_2,'-b');
hold on;
plot (v_3,-i_3,'-r');
hold on;
plot (v_4,-i_4,'-g');
hold on;
plot (v_5,-i_5,'-m');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Current (mA)', 'FontSize', 14);
fig_tit = title('I-V Curve of Photodiode at Different Light Emittance (Wavelength = 555nm)', 'FontSize', 14);
tit_pos = get(fig_tit,'Position');
set(fig_tit,'Position',[tit_pos(1) tit_pos(2)+1 tit_pos(3)]);
set(gca, 'fontsize', 12);
fig_leg = legend ([num2str(lux_1*conv),' W/m^2'],[num2str(lux_2*conv),' W/m^2'],...
    [num2str(lux_3*conv),' W/m^2'],[num2str(lux_4*conv),' W/m^2'],[num2str(lux_5*conv),' W/m^2'],...
    'Location','SouthEast');
set(fig_leg,'FontSize',10);
hold off;
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

% **************** Plotting P-V Curves ****************

fig_id = figure();
plot (v_1,p_1,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-V Curve of Photodiode at Light Emittance = ',num2str(lux_1),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_2,p_2,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-V Curve of Photodiode at Light Emittance = ',num2str(lux_2),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_3,p_3,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-V Curve of Photodiode at Light Emittance = ',num2str(lux_3),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_4,p_4,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-V Curve of Photodiode at Light Emittance = ',num2str(lux_4),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_5,p_5,'-k');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-V Curve of Photodiode at Light Emittance = ',num2str(lux_5),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (v_1,p_1,'-k');
hold on;
plot (v_2,p_2,'-b');
hold on;
plot (v_3,p_3,'-r');
hold on;
plot (v_4,p_4,'-g');
hold on;
plot (v_5,p_5,'-m');
xlabel('Voltage (V)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
fig_tit = title('P-V Curve of Photodiode at Different Light Emittance (Wavelength = 555nm)', 'FontSize', 14);
tit_pos = get(fig_tit,'Position');
set(fig_tit,'Position',[tit_pos(1) tit_pos(2)+7 tit_pos(3)]);
set(gca, 'fontsize', 12);
fig_leg = legend ([num2str(lux_1*conv),' W/m^2'],[num2str(lux_2*conv),' W/m^2'],...
    [num2str(lux_3*conv),' W/m^2'],[num2str(lux_4*conv),' W/m^2'],[num2str(lux_5*conv),' W/m^2'],...
    'Location','NorthWest');
set(fig_leg,'FontSize',10);
hold off;
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

% **************** Plotting P-R Curves ****************

fig_id = figure();
plot (res,p_1,'-k');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-R Curve of Photodiode at Light Emittance = ',num2str(lux_1),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (res,p_2,'-k');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-R Curve of Photodiode at Light Emittance = ',num2str(lux_2),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (res,p_3,'-k');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-R Curve of Photodiode at Light Emittance = ',num2str(lux_3),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (res,p_4,'-k');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-R Curve of Photodiode at Light Emittance = ',num2str(lux_4),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (res,p_5,'-k');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
title(['P-R Curve of Photodiode at Light Emittance = ',num2str(lux_5),' Lux'], 'FontSize', 14);
set(gca, 'fontsize', 12);
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);

fig_id = figure();
plot (res,p_1,'-k');
hold on;
plot (res,p_2,'-b');
hold on;
plot (res,p_3,'-r');
hold on;
plot (res,p_4,'-g');
hold on;
plot (res,p_5,'-m');
xlabel('Resistance (\Omega)', 'FontSize', 14);
ylabel('Power (mW)', 'FontSize', 14);
fig_tit = title('P-R Curve of Photodiode at Different Light Emittance (Wavelength = 555nm)', 'FontSize', 14);
tit_pos = get(fig_tit,'Position');
set(fig_tit,'Position',[tit_pos(1) tit_pos(2)+7 tit_pos(3)]);
set(gca, 'fontsize', 12);
fig_leg = legend ([num2str(lux_1*conv),' W/m^2'],[num2str(lux_2*conv),' W/m^2'],...
    [num2str(lux_3*conv),' W/m^2'],[num2str(lux_4*conv),' W/m^2'],[num2str(lux_5*conv),' W/m^2'],...
    'Location','NorthEast');
set(fig_leg,'FontSize',10);
hold off;
saveas(fig_id,['/Users/shayantaheri/Desktop/fig_dir/',num2str(fig_id),'.pdf']);
