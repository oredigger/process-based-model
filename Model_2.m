%% ============================
% Read data
% ============================
Tabulateddata = readtable('Tabulateddata.csv', 'Range', 'A2');

% t input
t_al = Tabulateddata{1:7,2};
t_ad = Tabulateddata{8:13,2};
t_nd = Tabulateddata{14:18,2};

% aqueous As input
as3_al = Tabulateddata{1:7,5};
as3_ad = Tabulateddata{8:13,5};
as3_nd = Tabulateddata{14:18,5};

as5_al = Tabulateddata{1:7,7};
as5_ad = Tabulateddata{8:13,7};
as5_nd = Tabulateddata{14:18,7};

% F1
F1_as3_al = Tabulateddata{1:7,9};
F1_as3_ad = Tabulateddata{8:13,9};
F1_as3_nd = Tabulateddata{14:18,9};

F1_as5_al = Tabulateddata{1:7,11};
F1_as5_ad = Tabulateddata{8:13,11};
F1_as5_nd = Tabulateddata{14:18,11};

% F2
F2_as3_al = Tabulateddata{1:7,13};
F2_as3_ad = Tabulateddata{8:13,13};
F2_as3_nd = Tabulateddata{14:18,13};

F2_as5_al = Tabulateddata{1:7,15};
F2_as5_ad = Tabulateddata{8:13,15};
F2_as5_nd = Tabulateddata{14:18,15};

% F3
F3_as3_al = Tabulateddata{1:7,17};
F3_as3_ad = Tabulateddata{8:13,17};
F3_as3_nd = Tabulateddata{14:18,17};

F3_as5_al = Tabulateddata{1:7,19};
F3_as5_ad = Tabulateddata{8:13,19};
F3_as5_nd = Tabulateddata{14:18,19};

% F4
F4_as3_al = Tabulateddata{1:7,21};
F4_as3_ad = Tabulateddata{8:13,21};
F4_as3_nd = Tabulateddata{14:18,21};

F4_as5_al = Tabulateddata{1:7,23};
F4_as5_ad = Tabulateddata{8:13,23};
F4_as5_nd = Tabulateddata{14:18,23};

% F5
F5_as3_al = Tabulateddata{1:7,25};
F5_as3_ad = Tabulateddata{8:13,25};
F5_as3_nd = Tabulateddata{14:18,25};

F5_as5_al = Tabulateddata{1:7,27};
F5_as5_ad = Tabulateddata{8:13,27};
F5_as5_nd = Tabulateddata{14:18,27};

% F6
F6_as3_al = Tabulateddata{1:7,29};
F6_as3_ad = Tabulateddata{8:13,29};
F6_as3_nd = Tabulateddata{14:18,29};

F6_as5_al = Tabulateddata{1:7,31};
F6_as5_ad = Tabulateddata{8:13,31};
F6_as5_nd = Tabulateddata{14:18,31};

% F7
F7_as3_al = Tabulateddata{1:7,33};
F7_as3_ad = Tabulateddata{8:13,33};
F7_as3_nd = Tabulateddata{14:18,33};

F7_as5_al = Tabulateddata{1:7,35};
F7_as5_ad = Tabulateddata{8:13,35};
F7_as5_nd = Tabulateddata{14:18,35};

%% ============================
% Combine operational solid phases
% ============================
% F1 + F2 = mobile phase
F1F2_as3_al = F1_as3_al + F2_as3_al;
F1F2_as3_ad = F1_as3_ad + F2_as3_ad;
F1F2_as3_nd = F1_as3_nd + F2_as3_nd;

F1F2_as5_al = F1_as5_al + F2_as5_al;
F1F2_as5_ad = F1_as5_ad + F2_as5_ad;
F1F2_as5_nd = F1_as5_nd + F2_as5_nd;

% F4 + F6 = sulfide phase
F4F6_as3_al = F4_as3_al + F6_as3_al;
F4F6_as3_ad = F4_as3_ad + F6_as3_ad;
F4F6_as3_nd = F4_as3_nd + F6_as3_nd;

F4F6_as5_al = F4_as5_al + F6_as5_al;
F4F6_as5_ad = F4_as5_ad + F6_as5_ad;
F4F6_as5_nd = F4_as5_nd + F6_as5_nd;

% F5 + F7 = Al/Fe oxides
F5F7_as3_al = F5_as3_al + F7_as3_al;
F5F7_as3_ad = F5_as3_ad + F7_as3_ad;
F5F7_as3_nd = F5_as3_nd + F7_as3_nd;

F5F7_as5_al = F5_as5_al + F7_as5_al;
F5F7_as5_ad = F5_as5_ad + F7_as5_ad;
F5F7_as5_nd = F5_as5_nd + F7_as5_nd;

%% ============================
% Error bars
% ============================
error_as3_al = Tabulateddata{1:7,6};
error_as3_ad = Tabulateddata{8:13,6};
error_as3_nd = Tabulateddata{14:18,6};

error_as5_al = Tabulateddata{1:7,8};
error_as5_ad = Tabulateddata{8:13,8};
error_as5_nd = Tabulateddata{14:18,8};

error_as3_alf1 = Tabulateddata{1:7,10};
error_as3_adf1 = Tabulateddata{8:13,10};
error_as3_ndf1 = Tabulateddata{14:18,10};

error_as5_alf1 = Tabulateddata{1:7,12};
error_as5_adf1 = Tabulateddata{8:13,12};
error_as5_ndf1 = Tabulateddata{14:18,12};

error_as3_alf2 = Tabulateddata{1:7,14};
error_as3_adf2 = Tabulateddata{8:13,14};
error_as3_ndf2 = Tabulateddata{14:18,14};

error_as5_alf2 = Tabulateddata{1:7,16};
error_as5_adf2 = Tabulateddata{8:13,16};
error_as5_ndf2 = Tabulateddata{14:18,16};

error_as3_alf3 = Tabulateddata{1:7,18};
error_as3_adf3 = Tabulateddata{8:13,18};
error_as3_ndf3 = Tabulateddata{14:18,18};

error_as5_alf3 = Tabulateddata{1:7,20};
error_as5_adf3 = Tabulateddata{8:13,20};
error_as5_ndf3 = Tabulateddata{14:18,20};

error_as3_alf4 = Tabulateddata{1:7,22};
error_as3_adf4 = Tabulateddata{8:13,22};
error_as3_ndf4 = Tabulateddata{14:18,22};

error_as5_alf4 = Tabulateddata{1:7,24};
error_as5_adf4 = Tabulateddata{8:13,24};
error_as5_ndf4 = Tabulateddata{14:18,24};

error_as3_alf5 = Tabulateddata{1:7,26};
error_as3_adf5 = Tabulateddata{8:13,26};
error_as3_ndf5 = Tabulateddata{14:18,26};

error_as5_alf5 = Tabulateddata{1:7,28};
error_as5_adf5 = Tabulateddata{8:13,28};
error_as5_ndf5 = Tabulateddata{14:18,28};

error_as3_alf6 = Tabulateddata{1:7,30};
error_as3_adf6 = Tabulateddata{8:13,30};
error_as3_ndf6 = Tabulateddata{14:18,30};

error_as5_alf6 = Tabulateddata{1:7,32};
error_as5_adf6 = Tabulateddata{8:13,32};
error_as5_ndf6 = Tabulateddata{14:18,32};

error_as3_alf7 = Tabulateddata{1:7,34};
error_as3_adf7 = Tabulateddata{8:13,34};
error_as3_ndf7 = Tabulateddata{14:18,34};

error_as5_alf7 = Tabulateddata{1:7,36};
error_as5_adf7 = Tabulateddata{8:13,36};
error_as5_ndf7 = Tabulateddata{14:18,36};

error_as3_alf1(isnan(error_as3_alf1)) = 0;
error_as3_adf1(isnan(error_as3_adf1)) = 0;
error_as3_ndf1(isnan(error_as3_ndf1)) = 0;

error_as5_alf1(isnan(error_as5_alf1)) = 0;
error_as5_adf1(isnan(error_as5_adf1)) = 0;
error_as5_ndf1(isnan(error_as5_ndf1)) = 0;

error_as3_alf2(isnan(error_as3_alf2)) = 0;
error_as3_adf2(isnan(error_as3_adf2)) = 0;
error_as3_ndf2(isnan(error_as3_ndf2)) = 0;

error_as5_alf2(isnan(error_as5_alf2)) = 0;
error_as5_adf2(isnan(error_as5_adf2)) = 0;
error_as5_ndf2(isnan(error_as5_ndf2)) = 0;

error_as3_alf3(isnan(error_as3_alf3)) = 0;
error_as3_adf3(isnan(error_as3_adf3)) = 0;
error_as3_ndf3(isnan(error_as3_ndf3)) = 0;

error_as5_alf3(isnan(error_as5_alf3)) = 0;
error_as5_adf3(isnan(error_as5_adf3)) = 0;
error_as5_ndf3(isnan(error_as5_ndf3)) = 0;

error_as3_alf4(isnan(error_as3_alf4)) = 0;
error_as3_adf4(isnan(error_as3_adf4)) = 0;
error_as3_ndf4(isnan(error_as3_ndf4)) = 0;

error_as5_alf4(isnan(error_as5_alf4)) = 0;
error_as5_adf4(isnan(error_as5_adf4)) = 0;
error_as5_ndf4(isnan(error_as5_ndf4)) = 0;

error_as3_alf5(isnan(error_as3_alf5)) = 0;
error_as3_adf5(isnan(error_as3_adf5)) = 0;
error_as3_ndf5(isnan(error_as3_ndf5)) = 0;

error_as5_alf5(isnan(error_as5_alf5)) = 0;
error_as5_adf5(isnan(error_as5_adf5)) = 0;
error_as5_ndf5(isnan(error_as5_ndf5)) = 0;

error_as3_alf6(isnan(error_as3_alf6)) = 0;
error_as3_adf6(isnan(error_as3_adf6)) = 0;
error_as3_ndf6(isnan(error_as3_ndf6)) = 0;

error_as5_alf6(isnan(error_as5_alf6)) = 0;
error_as5_adf6(isnan(error_as5_adf6)) = 0;
error_as5_ndf6(isnan(error_as5_ndf6)) = 0;

error_as3_alf7(isnan(error_as3_alf7)) = 0;
error_as3_adf7(isnan(error_as3_adf7)) = 0;
error_as3_ndf7(isnan(error_as3_ndf7)) = 0;

error_as5_alf7(isnan(error_as5_alf7)) = 0;
error_as5_adf7(isnan(error_as5_adf7)) = 0;
error_as5_ndf7(isnan(error_as5_ndf7)) = 0;

error_as3_alf1f2 = sqrt(error_as3_alf1.^2 + error_as3_alf2.^2);
error_as3_adf1f2 = sqrt(error_as3_adf1.^2 + error_as3_adf2.^2);
error_as3_ndf1f2 = sqrt(error_as3_ndf1.^2 + error_as3_ndf2.^2);

error_as5_alf1f2 = sqrt(error_as5_alf1.^2 + error_as5_alf2.^2);
error_as5_adf1f2 = sqrt(error_as5_adf1.^2 + error_as5_adf2.^2);
error_as5_ndf1f2 = sqrt(error_as5_ndf1.^2 + error_as5_ndf2.^2);

error_as3_alf4f6 = sqrt(error_as3_alf4.^2 + error_as3_alf6.^2);
error_as3_adf4f6 = sqrt(error_as3_adf4.^2 + error_as3_adf6.^2);
error_as3_ndf4f6 = sqrt(error_as3_ndf4.^2 + error_as3_ndf6.^2);

error_as5_alf4f6 = sqrt(error_as5_alf4.^2 + error_as5_alf6.^2);
error_as5_adf4f6 = sqrt(error_as5_adf4.^2 + error_as5_adf6.^2);
error_as5_ndf4f6 = sqrt(error_as5_ndf4.^2 + error_as5_ndf6.^2);

error_as3_alf5f7 = sqrt(error_as3_alf5.^2 + error_as3_alf7.^2);
error_as3_adf5f7 = sqrt(error_as3_adf5.^2 + error_as3_adf7.^2);
error_as3_ndf5f7 = sqrt(error_as3_ndf5.^2 + error_as3_ndf7.^2);

error_as5_alf5f7 = sqrt(error_as5_alf5.^2 + error_as5_alf7.^2);
error_as5_adf5f7 = sqrt(error_as5_adf5.^2 + error_as5_adf7.^2);
error_as5_ndf5f7 = sqrt(error_as5_ndf5.^2 + error_as5_ndf7.^2);

%% ============================
% Bounds
% ============================
lb_al = readmatrix('lbal.csv');
ub_al = readmatrix('ubal.csv');

lb_ad = readmatrix('lbad.csv');
ub_ad = readmatrix('ubad.csv');

lb_nd = readmatrix('lbnd.csv');
ub_nd = readmatrix('ubnd.csv');

%% ============================
% Time ranges and solid-time indices
% ============================
t_fit_al = t_al(2:end);
t_fit_ad = t_ad(2:end);

% ND starts from measured t = 0
t_fit_nd = t_nd;

t_range_al = [t_al(2), max(t_al)];
t_range_ad = [t_ad(2), max(t_ad)];
t_range_nd = [t_nd(1), max(t_nd)];

% These indices are relative to the arrays used in the objective.
% For AL/AD, arrays are 2:end.
% For ND, arrays are 1:end.
solid_time_idx_al = [1,4,6];
solid_time_idx_ad = [1,3,5];
solid_time_idx_nd = [1,3,5];

%% ============================
% GA options
% ============================
options_ga = optimoptions('ga', ...
    'Display', 'iter', ...
    'PopulationSize', 200, ...
    'MaxGenerations', 1500, ...
    'FunctionTolerance', 1e-15, ...
    'ConstraintTolerance', 1e-15, ...
    'UseParallel', true);

nvars = 30;

%% ============================
% Optimization: AL
% ============================
bestK_ga_al = ga(@(kSquared) objective_ALAD_threshold(kSquared, ...
                            t_fit_al, ...
                            as3_al(2), as5_al(2), ...
                            as3_al(2:end), as5_al(2:end), ...
                            solid_time_idx_al, ...
                            F1F2_as3_al(2:end), F3_as3_al(2:end), F4F6_as3_al(2:end), F5F7_as3_al(2:end), ...
                            F1F2_as5_al(2:end), F3_as5_al(2:end), F4F6_as5_al(2:end), F5F7_as5_al(2:end)), ...
                            nvars, [], [], [], [], lb_al, ub_al, [], options_ga);

%% ============================
% Optimization: AD
% ============================
bestK_ga_ad = ga(@(kSquared) objective_ALAD_threshold(kSquared, ...
                            t_fit_ad, ...
                            as3_ad(2), as5_ad(2), ...
                            as3_ad(2:end), as5_ad(2:end), ...
                            solid_time_idx_ad, ...
                            F1F2_as3_ad(2:end), F3_as3_ad(2:end), F4F6_as3_ad(2:end), F5F7_as3_ad(2:end), ...
                            F1F2_as5_ad(2:end), F3_as5_ad(2:end), F4F6_as5_ad(2:end), F5F7_as5_ad(2:end)), ...
                            nvars, [], [], [], [], lb_ad, ub_ad, [], options_ga);

%% ============================
% Optimization: ND
% first 8 variables are ignored inside objective_ND_threshold.
% ============================
bestK_ga_nd = ga(@(kSquared) objective_ND_threshold(kSquared, ...
                            t_fit_nd, ...
                            as3_nd(1), as5_nd(1), ...
                            F1F2_as3_nd(1), F3_as3_nd(1), F4F6_as3_nd(1), F5F7_as3_nd(1), ...
                            F1F2_as5_nd(1), F3_as5_nd(1), F4F6_as5_nd(1), F5F7_as5_nd(1), ...
                            as3_nd, as5_nd, ...
                            solid_time_idx_nd, ...
                            F1F2_as3_nd, F3_as3_nd, F4F6_as3_nd, F5F7_as3_nd, ...
                            F1F2_as5_nd, F3_as5_nd, F4F6_as5_nd, F5F7_as5_nd), ...
                            nvars, [], [], [], [], lb_nd, ub_nd, [], options_ga);

%% ============================
% Build AL initial solid distribution from optimized first 8 fractions
% ============================
k_al = abs(sqrt(bestK_ga_al));
k1_al = k_al(1:8);
solid_total_al = 5 - as3_al(2) - as5_al(2);

as3_1_f1f2_al = solid_total_al * k1_al(1);
as3_1_f3_al   = solid_total_al * k1_al(2);
as3_1_f4f6_al = solid_total_al * k1_al(3);
as3_1_f5f7_al = solid_total_al * k1_al(4);

as5_1_f1f2_al = solid_total_al * k1_al(5);
as5_1_f3_al   = solid_total_al * k1_al(6);
as5_1_f4f6_al = solid_total_al * k1_al(7);
as5_1_f5f7_al = solid_total_al * k1_al(8);

%% ============================
% Build AD initial solid distribution from optimized first 8 fractions
% ============================
k_ad = abs(sqrt(bestK_ga_ad));
k1_ad = k_ad(1:8);
solid_total_ad = 5 - as3_ad(2) - as5_ad(2);

as3_1_f1f2_ad = solid_total_ad * k1_ad(1);
as3_1_f3_ad   = solid_total_ad * k1_ad(2);
as3_1_f4f6_ad = solid_total_ad * k1_ad(3);
as3_1_f5f7_ad = solid_total_ad * k1_ad(4);

as5_1_f1f2_ad = solid_total_ad * k1_ad(5);
as5_1_f3_ad   = solid_total_ad * k1_ad(6);
as5_1_f4f6_ad = solid_total_ad * k1_ad(7);
as5_1_f5f7_ad = solid_total_ad * k1_ad(8);

%% ============================
% ND initial condition from measured t = 0
% ============================
as3_0_f1f2_nd = F1F2_as3_nd(1);
as3_0_f3_nd   = F3_as3_nd(1);
as3_0_f4f6_nd = F4F6_as3_nd(1);
as3_0_f5f7_nd = F5F7_as3_nd(1);

as5_0_f1f2_nd = F1F2_as5_nd(1);
as5_0_f3_nd   = F3_as5_nd(1);
as5_0_f4f6_nd = F4F6_as5_nd(1);
as5_0_f5f7_nd = F5F7_as5_nd(1);

%% ============================
% Simulate best models
% ============================
[T1_ga, Y1_ga] = modelFunc_AL_AD(t_range_al, abs(sqrt(bestK_ga_al(9:end))), as3_al(2), as5_al(2), ...
                            as3_1_f1f2_al, as3_1_f3_al, as3_1_f4f6_al, as3_1_f5f7_al, ...
                            as5_1_f1f2_al, as5_1_f3_al, as5_1_f4f6_al, as5_1_f5f7_al);

[T2_ga, Y2_ga] = modelFunc_AL_AD(t_range_ad, abs(sqrt(bestK_ga_ad(9:end))), as3_ad(2), as5_ad(2), ...
                            as3_1_f1f2_ad, as3_1_f3_ad, as3_1_f4f6_ad, as3_1_f5f7_ad, ...
                            as5_1_f1f2_ad, as5_1_f3_ad, as5_1_f4f6_ad, as5_1_f5f7_ad);

[T3_ga, Y3_ga] = modelFunc_ND(t_range_nd, abs(sqrt(bestK_ga_nd(9:end))), as3_nd(1), as5_nd(1), ...
                            as3_0_f1f2_nd, as3_0_f3_nd, as3_0_f4f6_nd, as3_0_f5f7_nd, ...
                            as5_0_f1f2_nd, as5_0_f3_nd, as5_0_f4f6_nd, as5_0_f5f7_nd);

%% ============================
% Export outputs
% ============================
writematrix(bestK_ga_al, "bestK_ga_al_threshold.csv");
writematrix(bestK_ga_ad, "bestK_ga_ad_threshold.csv");
writematrix(bestK_ga_nd, "bestK_ga_nd_threshold.csv");

writematrix(T1_ga, "t1ga_threshold.csv");
writematrix(Y1_ga, "y1ga_threshold.csv");

writematrix(T2_ga, "t2ga_threshold.csv");
writematrix(Y2_ga, "y2ga_threshold.csv");

writematrix(T3_ga, "t3ga_threshold.csv");
writematrix(Y3_ga, "y3ga_threshold.csv");

%% ============================
% Check residuals at measured times
% ============================
check_AL = checkResiduals(T1_ga, Y1_ga, t_fit_al, ...
                          as3_al(2:end), as5_al(2:end), ...
                          solid_time_idx_al, ...
                          F1F2_as3_al(2:end), F3_as3_al(2:end), F4F6_as3_al(2:end), F5F7_as3_al(2:end), ...
                          F1F2_as5_al(2:end), F3_as5_al(2:end), F4F6_as5_al(2:end), F5F7_as5_al(2:end));

check_AD = checkResiduals(T2_ga, Y2_ga, t_fit_ad, ...
                          as3_ad(2:end), as5_ad(2:end), ...
                          solid_time_idx_ad, ...
                          F1F2_as3_ad(2:end), F3_as3_ad(2:end), F4F6_as3_ad(2:end), F5F7_as3_ad(2:end), ...
                          F1F2_as5_ad(2:end), F3_as5_ad(2:end), F4F6_as5_ad(2:end), F5F7_as5_ad(2:end));

check_ND = checkResiduals(T3_ga, Y3_ga, t_fit_nd, ...
                          as3_nd, as5_nd, ...
                          solid_time_idx_nd, ...
                          F1F2_as3_nd, F3_as3_nd, F4F6_as3_nd, F5F7_as3_nd, ...
                          F1F2_as5_nd, F3_as5_nd, F4F6_as5_nd, F5F7_as5_nd);

disp("AL residual check:");
disp(check_AL);

disp("AD residual check:");
disp(check_AD);

disp("ND residual check:");
disp(check_ND);

%% ============================
% Plot
% ============================
figure;
tile1 = tiledlayout(2,3);

nexttile
plot(T1_ga, Y1_ga(:,9), '-b', T1_ga, Y1_ga(:,10), '-r', 'LineWidth', 1.5);
hold on;
errorbar(t_al, as3_al, error_as3_al, 'o', 'MarkerEdgeColor', 'blue', ...
         'MarkerFaceColor', 'blue', 'Color', 'blue', 'LineWidth', 1.5);
errorbar(t_al, as5_al, error_as5_al, 'o', 'MarkerEdgeColor', 'red', ...
         'MarkerFaceColor', 'red', 'Color', 'red', 'LineWidth', 1.5);
title('AL aqueous');
xlabel('Time');
ylabel('As concentration');
hold off;

nexttile
plot(T1_ga, Y1_ga(:,1), '--b', T1_ga, Y1_ga(:,2), '--c', T1_ga, Y1_ga(:,3), '--m', T1_ga, Y1_ga(:,4), '--g', ...
     T1_ga, Y1_ga(:,5), '-b', T1_ga, Y1_ga(:,6), '-c', T1_ga, Y1_ga(:,7), '-m', T1_ga, Y1_ga(:,8), '-g', ...
     'LineWidth', 1.5);
hold on;
errorbar(t_al, F1F2_as3_al, error_as3_alf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'none', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_al, F3_as3_al,   error_as3_alf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'none', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_al, F4F6_as3_al, error_as3_alf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'none', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_al, F5F7_as3_al, error_as3_alf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'none', 'Color', 'g', 'LineWidth', 1.5);
errorbar(t_al, F1F2_as5_al, error_as5_alf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'b', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_al, F3_as5_al,   error_as5_alf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'c', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_al, F4F6_as5_al, error_as5_alf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_al, F5F7_as5_al, error_as5_alf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'g', 'Color', 'g', 'LineWidth', 1.5);
title('AL solid');
xlabel('Time');
ylabel('Solid As');
hold off;

nexttile
plot(T2_ga, Y2_ga(:,9), '-b', T2_ga, Y2_ga(:,10), '-r', 'LineWidth', 1.5);
hold on;
errorbar(t_ad, as3_ad, error_as3_ad, 'o', 'MarkerEdgeColor', 'blue', ...
         'MarkerFaceColor', 'blue', 'Color', 'blue', 'LineWidth', 1.5);
errorbar(t_ad, as5_ad, error_as5_ad, 'o', 'MarkerEdgeColor', 'red', ...
         'MarkerFaceColor', 'red', 'Color', 'red', 'LineWidth', 1.5);
title('AD aqueous');
xlabel('Time');
ylabel('As concentration');
hold off;

nexttile
plot(T2_ga, Y2_ga(:,1), '--b', T2_ga, Y2_ga(:,2), '--c', T2_ga, Y2_ga(:,3), '--m', T2_ga, Y2_ga(:,4), '--g', ...
     T2_ga, Y2_ga(:,5), '-b', T2_ga, Y2_ga(:,6), '-c', T2_ga, Y2_ga(:,7), '-m', T2_ga, Y2_ga(:,8), '-g', ...
     'LineWidth', 1.5);
hold on;
errorbar(t_ad, F1F2_as3_ad, error_as3_adf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'none', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_ad, F3_as3_ad,   error_as3_adf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'none', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_ad, F4F6_as3_ad, error_as3_adf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'none', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_ad, F5F7_as3_ad, error_as3_adf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'none', 'Color', 'g', 'LineWidth', 1.5);
errorbar(t_ad, F1F2_as5_ad, error_as5_adf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'b', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_ad, F3_as5_ad,   error_as5_adf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'c', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_ad, F4F6_as5_ad, error_as5_adf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_ad, F5F7_as5_ad, error_as5_adf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'g', 'Color', 'g', 'LineWidth', 1.5);
title('AD solid');
xlabel('Time');
ylabel('Solid As');
hold off;

nexttile
plot(T3_ga, Y3_ga(:,9), '-b', T3_ga, Y3_ga(:,10), '-r', 'LineWidth', 1.5);
hold on;
errorbar(t_nd, as3_nd, error_as3_nd, 'o', 'MarkerEdgeColor', 'blue', ...
         'MarkerFaceColor', 'blue', 'Color', 'blue', 'LineWidth', 1.5);
errorbar(t_nd, as5_nd, error_as5_nd, 'o', 'MarkerEdgeColor', 'red', ...
         'MarkerFaceColor', 'red', 'Color', 'red', 'LineWidth', 1.5);
title('ND aqueous');
xlabel('Time');
ylabel('As concentration');
hold off;

nexttile
plot(T3_ga, Y3_ga(:,1), '--b', T3_ga, Y3_ga(:,2), '--c', T3_ga, Y3_ga(:,3), '--m', T3_ga, Y3_ga(:,4), '--g', ...
     T3_ga, Y3_ga(:,5), '-b', T3_ga, Y3_ga(:,6), '-c', T3_ga, Y3_ga(:,7), '-m', T3_ga, Y3_ga(:,8), '-g', ...
     'LineWidth', 1.5);
hold on;
errorbar(t_nd, F1F2_as3_nd, error_as3_ndf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'none', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_nd, F3_as3_nd,   error_as3_ndf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'none', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_nd, F4F6_as3_nd, error_as3_ndf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'none', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_nd, F5F7_as3_nd, error_as3_ndf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'none', 'Color', 'g', 'LineWidth', 1.5);
errorbar(t_nd, F1F2_as5_nd, error_as5_ndf1f2, 'o', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'b', 'Color', 'b', 'LineWidth', 1.5);
errorbar(t_nd, F3_as5_nd,   error_as5_ndf3,   'o', 'MarkerEdgeColor', 'c', 'MarkerFaceColor', 'c', 'Color', 'c', 'LineWidth', 1.5);
errorbar(t_nd, F4F6_as5_nd, error_as5_ndf4f6, 'o', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'Color', 'm', 'LineWidth', 1.5);
errorbar(t_nd, F5F7_as5_nd, error_as5_ndf5f7, 'o', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'g', 'Color', 'g', 'LineWidth', 1.5);
title('ND solid');
xlabel('Time');
ylabel('Solid As');
hold off;

%% ============================================================
% ODE function
% ============================================================
function [T, Y] = modelFunc_AL_AD(t, k0, as3_1, as5_1, ...
                            as3_1_f1f2, as3_1_f3, as3_1_f4f6, as3_1_f5f7, ...
                            as5_1_f1f2, as5_1_f3, as5_1_f4f6, as5_1_f5f7)

    function dydt = odes(t, y, k0)
        dydt = zeros(10, 1);

        k = k0;

        % Adsorption and oxidation processes for As(III)
        dydt(1) = k(1) * y(9) - k(5) * y(1) - k(19) * y(1); % F1F2 As(III)
        dydt(2) = k(2) * y(9) - k(6) * y(2) - k(20) * y(2); % F3 As(III)
        dydt(3) = k(3) * y(9) - k(7) * y(3) ;% F4F6 As(III)
        dydt(4) = k(4) * y(9) - k(8) * y(4) - k(22) * y(4); % F5F7 As(III)

        % Adsorption and oxidation processes for As(V)
        dydt(5) = k(9)  * y(10) - k(13) * y(5) + k(19) * y(1); % F1F2 As(V)
        dydt(6) = k(10) * y(10) - k(14) * y(6) + k(20) * y(2); % F3 As(V)
        dydt(7) = k(11) * y(10) - k(15) * y(7) ;% F4F6 As(V)
        dydt(8) = k(12) * y(10) - k(16) * y(8) + k(22) * y(4); % F5F7 As(V)

        % Homogeneous oxidation processes for As(III) and As(V)
        dydt(9)  = -k(17) * y(9) - sum(dydt(1:4)) - k(18) * y(9); % As(III) aqueous
        dydt(10) =  k(17) * y(9) - sum(dydt(5:8)) + k(18) * y(9); % As(V) aqueous
    end

    initial_conditions = [as3_1_f1f2, as3_1_f3, as3_1_f4f6, as3_1_f5f7, ...
                          as5_1_f1f2, as5_1_f3, as5_1_f4f6, as5_1_f5f7, ...
                          as3_1, as5_1];

    options = odeset('NonNegative', 1:10);

    [T, Y] = ode45(@(t, y) odes(t, y, k0), t, initial_conditions, options);
end

function [T, Y] = modelFunc_ND(t, k0, as3_1, as5_1, ...
                            as3_1_f1f2, as3_1_f3, as3_1_f4f6, as3_1_f5f7, ...
                            as5_1_f1f2, as5_1_f3, as5_1_f4f6, as5_1_f5f7)

    function dydt = odes(t, y, k0)
        dydt = zeros(10, 1);

        k = k0;

        % Adsorption and oxidation processes for As(III)
        dydt(1) = k(1) * y(9) - k(5) * y(1) - k(19) * y(1); % F1F2 As(III)
        dydt(2) = k(2) * y(9) - k(6) * y(2) - k(20) * y(2); % F3 As(III)
        dydt(3) = k(3) * y(9) - k(7) * y(3) + k(21) * y(3);% F4F6 As(III)
        dydt(4) = k(4) * y(9) - k(8) * y(4) - k(22) * y(4); % F5F7 As(III)

        % Adsorption and oxidation processes for As(V)
        dydt(5) = k(9)  * y(10) - k(13) * y(5) + k(19) * y(1); % F1F2 As(V)
        dydt(6) = k(10) * y(10) - k(14) * y(6) + k(20) * y(2); % F3 As(V)
        dydt(7) = k(11) * y(10) - k(15) * y(7) - k(21) * y(3);% F4F6 As(V)
        dydt(8) = k(12) * y(10) - k(16) * y(8) + k(22) * y(4); % F5F7 As(V)

        % Homogeneous oxidation processes for As(III) and As(V)
        dydt(9)  = -k(17) * y(9) - sum(dydt(1:4)) - k(18) * y(9); % As(III) aqueous
        dydt(10) =  k(17) * y(9) - sum(dydt(5:8)) + k(18) * y(9); % As(V) aqueous
    end

    initial_conditions = [as3_1_f1f2, as3_1_f3, as3_1_f4f6, as3_1_f5f7, ...
                          as5_1_f1f2, as5_1_f3, as5_1_f4f6, as5_1_f5f7, ...
                          as3_1, as5_1];

    options = odeset('NonNegative', 1:10);

    [T, Y] = ode45(@(t, y) odes(t, y, k0), t, initial_conditions, options);
end

%% ============================================================
% Objective for AL and AD
% First 8 parameters = initial solid distribution fractions.
% Parameters 9:30 = ODE kinetic parameters.
% ============================================================
function obj = objective_ALAD_threshold(kSquared, t, as3_init, as5_init, ...
                                        as3_exp, as5_exp, ...
                                        solid_time_idx, ...
                                        as3f1f2, as3f3, as3f4f6, as3f5f7, ...
                                        as5f1f2, as5f3, as5f4f6, as5f5f7)

    k = abs(sqrt(kSquared));
    k1 = k(1:8);
    k2 = k(9:30);

    aqueous_tol = 0.1;
    solid_tol = 0.01;

    solid_total_target = 5 - as3_init - as5_init;

    as3_init_f1f2 = solid_total_target * k1(1);
    as3_init_f3   = solid_total_target * k1(2);
    as3_init_f4f6 = solid_total_target * k1(3);
    as3_init_f5f7 = solid_total_target * k1(4);

    as5_init_f1f2 = solid_total_target * k1(5);
    as5_init_f3   = solid_total_target * k1(6);
    as5_init_f4f6 = solid_total_target * k1(7);
    as5_init_f5f7 = solid_total_target * k1(8);

    [T, Y] = modelFunc_AL_AD(t, k2, as3_init, as5_init, ...
                       as3_init_f1f2, as3_init_f3, as3_init_f4f6, as3_init_f5f7, ...
                       as5_init_f1f2, as5_init_f3, as5_init_f4f6, as5_init_f5f7);

    y = exact(T, Y, t);

    solid_model = y(solid_time_idx, 1:8);
    solid_exp = [as3f1f2(solid_time_idx), as3f3(solid_time_idx), as3f4f6(solid_time_idx), as3f5f7(solid_time_idx), ...
                 as5f1f2(solid_time_idx), as5f3(solid_time_idx), as5f4f6(solid_time_idx), as5f5f7(solid_time_idx)];

    aq_model = y(:,9:10);
    aq_exp = [as3_exp, as5_exp];

    solid_excess = max(abs(solid_model - solid_exp) - solid_tol, 0);
    aq_excess = max(abs(aq_model - aq_exp) - aqueous_tol, 0);

    initial_solid_sum = as3_init_f1f2 + as3_init_f3 + as3_init_f4f6 + as3_init_f5f7 + ...
                        as5_init_f1f2 + as5_init_f3 + as5_init_f4f6 + as5_init_f5f7;

    initial_total_excess = max(abs(initial_solid_sum - solid_total_target) - 1e-8, 0);

    fraction_sum_excess = max(abs(sum(k1) - 1) - 1e-8, 0);

    negative_penalty = sum(max(-Y(:), 0).^2);

    lasso = 0.001 * sum(abs(k2));

    obj = 1e5 * sum(solid_excess(:).^2) + ...
          1e4 * sum(aq_excess(:).^2) + ...
          1e8 * initial_total_excess.^2 + ...
          1e8 * fraction_sum_excess.^2 + ...
          1e8 * negative_penalty + ...
          lasso;
end

%% ============================================================
% Objective for ND
% ND uses measured t = 0 initial solid distribution directly.
% First 8 parameters are ignored; parameters 9:30 are ODE kinetic parameters.
% ============================================================
function obj = objective_ND_threshold(kSquared, t, as3_init, as5_init, ...
                                      as3_init_f1f2, as3_init_f3, as3_init_f4f6, as3_init_f5f7, ...
                                      as5_init_f1f2, as5_init_f3, as5_init_f4f6, as5_init_f5f7, ...
                                      as3_exp, as5_exp, ...
                                      solid_time_idx, ...
                                      as3f1f2, as3f3, as3f4f6, as3f5f7, ...
                                      as5f1f2, as5f3, as5f4f6, as5f5f7)

    k = abs(sqrt(kSquared));
    k2 = k(9:30);

    aqueous_tol = 0.1;
    solid_tol = 0.01;

    [T, Y] = modelFunc_ND(t, k2, as3_init, as5_init, ...
                       as3_init_f1f2, as3_init_f3, as3_init_f4f6, as3_init_f5f7, ...
                       as5_init_f1f2, as5_init_f3, as5_init_f4f6, as5_init_f5f7);

    y = exact(T, Y, t);

    solid_model = y(solid_time_idx, 1:8);
    solid_exp = [as3f1f2(solid_time_idx), as3f3(solid_time_idx), as3f4f6(solid_time_idx), as3f5f7(solid_time_idx), ...
                 as5f1f2(solid_time_idx), as5f3(solid_time_idx), as5f4f6(solid_time_idx), as5f5f7(solid_time_idx)];

    aq_model = y(:,9:10);
    aq_exp = [as3_exp, as5_exp];

    solid_excess = max(abs(solid_model - solid_exp) - solid_tol, 0);
    aq_excess = max(abs(aq_model - aq_exp) - aqueous_tol, 0);

    negative_penalty = sum(max(-Y(:), 0).^2);

    lasso = 0.001 * sum(abs(k2));

    obj = 1e5 * sum(solid_excess(:).^2) + ...
          1e4 * sum(aq_excess(:).^2) + ...
          1e8 * negative_penalty + ...
          lasso;
end

%% ============================================================
% Exact interpolation
% ============================================================
function y = exact(t, Y, time)
    y1  = interp1(t, Y(:,1),  time, 'linear', 'extrap');
    y2  = interp1(t, Y(:,2),  time, 'linear', 'extrap');
    y3  = interp1(t, Y(:,3),  time, 'linear', 'extrap');
    y4  = interp1(t, Y(:,4),  time, 'linear', 'extrap');
    y5  = interp1(t, Y(:,5),  time, 'linear', 'extrap');
    y6  = interp1(t, Y(:,6),  time, 'linear', 'extrap');
    y7  = interp1(t, Y(:,7),  time, 'linear', 'extrap');
    y8  = interp1(t, Y(:,8),  time, 'linear', 'extrap');
    y9  = interp1(t, Y(:,9),  time, 'linear', 'extrap');
    y10 = interp1(t, Y(:,10), time, 'linear', 'extrap');

    y = [y1, y2, y3, y4, y5, y6, y7, y8, y9, y10];
end

%% ============================================================
% Residual checker
% ============================================================
function checkTable = checkResiduals(T, Y, t_eval, ...
                                     as3_exp, as5_exp, ...
                                     solid_time_idx, ...
                                     as3f1f2, as3f3, as3f4f6, as3f5f7, ...
                                     as5f1f2, as5f3, as5f4f6, as5f5f7)

    y = exact(T, Y, t_eval);

    aq_model = y(:,9:10);
    aq_exp = [as3_exp, as5_exp];
    aq_abs_resid = abs(aq_model - aq_exp);

    solid_model = y(solid_time_idx, 1:8);
    solid_exp = [as3f1f2(solid_time_idx), as3f3(solid_time_idx), as3f4f6(solid_time_idx), as3f5f7(solid_time_idx), ...
                 as5f1f2(solid_time_idx), as5f3(solid_time_idx), as5f4f6(solid_time_idx), as5f5f7(solid_time_idx)];

    solid_abs_resid = abs(solid_model - solid_exp);

    max_aq_resid = max(aq_abs_resid(:));
    max_solid_resid = max(solid_abs_resid(:));

    n_aq_over_0p2 = sum(aq_abs_resid(:) > 0.2);
    n_solid_over_0p05 = sum(solid_abs_resid(:) > 0.05);

    checkTable = table(max_aq_resid, max_solid_resid, n_aq_over_0p2, n_solid_over_0p05);
end
