%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'TNTalt';
M_.dynare_version = '6.3';
oo_.dynare_version = '6.3';
options_.dynare_version = '6.3';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'u_y_T'};
M_.exo_names_tex(1) = {'u\_y\_T'};
M_.exo_names_long(1) = {'u_y_T'};
M_.endo_names = cell(7,1);
M_.endo_names_tex = cell(7,1);
M_.endo_names_long = cell(7,1);
M_.endo_names(1) = {'y_T'};
M_.endo_names_tex(1) = {'y\_T'};
M_.endo_names_long(1) = {'y_T'};
M_.endo_names(2) = {'c_T'};
M_.endo_names_tex(2) = {'c\_T'};
M_.endo_names_long(2) = {'c_T'};
M_.endo_names(3) = {'d'};
M_.endo_names_tex(3) = {'d'};
M_.endo_names_long(3) = {'d'};
M_.endo_names(4) = {'tby'};
M_.endo_names_tex(4) = {'tby'};
M_.endo_names_long(4) = {'tby'};
M_.endo_names(5) = {'cay'};
M_.endo_names_tex(5) = {'cay'};
M_.endo_names_long(5) = {'cay'};
M_.endo_names(6) = {'p_N'};
M_.endo_names_tex(6) = {'p\_N'};
M_.endo_names_long(6) = {'p_N'};
M_.endo_names(7) = {'AUX_ENDO_LAG_0_1'};
M_.endo_names_tex(7) = {'AUX\_ENDO\_LAG\_0\_1'};
M_.endo_names_long(7) = {'AUX_ENDO_LAG_0_1'};
M_.endo_partitions = struct();
M_.param_names = cell(16,1);
M_.param_names_tex = cell(16,1);
M_.param_names_long = cell(16,1);
M_.param_names(1) = {'RHO1'};
M_.param_names_tex(1) = {'RHO1'};
M_.param_names_long(1) = {'RHO1'};
M_.param_names(2) = {'RHO2'};
M_.param_names_tex(2) = {'RHO2'};
M_.param_names_long(2) = {'RHO2'};
M_.param_names(3) = {'ETA_y'};
M_.param_names_tex(3) = {'ETA\_y'};
M_.param_names_long(3) = {'ETA_y'};
M_.param_names(4) = {'y_N'};
M_.param_names_tex(4) = {'y\_N'};
M_.param_names_long(4) = {'y_N'};
M_.param_names(5) = {'D_BAR'};
M_.param_names_tex(5) = {'D\_BAR'};
M_.param_names_long(5) = {'D_BAR'};
M_.param_names(6) = {'BETA'};
M_.param_names_tex(6) = {'BETA'};
M_.param_names_long(6) = {'BETA'};
M_.param_names(7) = {'r_int'};
M_.param_names_tex(7) = {'r\_int'};
M_.param_names_long(7) = {'r_int'};
M_.param_names(8) = {'PSI'};
M_.param_names_tex(8) = {'PSI'};
M_.param_names_long(8) = {'PSI'};
M_.param_names(9) = {'A'};
M_.param_names_tex(9) = {'A'};
M_.param_names_long(9) = {'A'};
M_.param_names(10) = {'SIGMA'};
M_.param_names_tex(10) = {'SIGMA'};
M_.param_names_long(10) = {'SIGMA'};
M_.param_names(11) = {'y_T_ss'};
M_.param_names_tex(11) = {'y\_T\_ss'};
M_.param_names_long(11) = {'y_T_ss'};
M_.param_names(12) = {'d_ss'};
M_.param_names_tex(12) = {'d\_ss'};
M_.param_names_long(12) = {'d_ss'};
M_.param_names(13) = {'c_T_ss'};
M_.param_names_tex(13) = {'c\_T\_ss'};
M_.param_names_long(13) = {'c_T_ss'};
M_.param_names(14) = {'tby_ss'};
M_.param_names_tex(14) = {'tby\_ss'};
M_.param_names_long(14) = {'tby_ss'};
M_.param_names(15) = {'cay_ss'};
M_.param_names_tex(15) = {'cay\_ss'};
M_.param_names_long(15) = {'cay_ss'};
M_.param_names(16) = {'p_N_ss'};
M_.param_names_tex(16) = {'p\_N\_ss'};
M_.param_names_long(16) = {'p_N_ss'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 7;
M_.param_nbr = 16;
M_.orig_endo_nbr = 6;
M_.aux_vars(1).endo_index = 7;
M_.aux_vars(1).type = 1;
M_.aux_vars(1).orig_index = 1;
M_.aux_vars(1).orig_lead_lag = -1;
M_.aux_vars(1).orig_expr = 'y_T(-1)';
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 7;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 2;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 2;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 2;
M_.lead_lag_incidence = [
 1 4 0;
 0 5 11;
 2 6 0;
 0 7 0;
 0 8 0;
 0 9 0;
 3 10 0;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 3;
M_.ndynamic   = 4;
M_.dynamic_tmp_nbr = [1; 0; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'cay' ;
  5 , 'name' , 'tby' ;
  6 , 'name' , '6' ;
};
M_.mapping.y_T.eqidx = [1 4 5 6 ];
M_.mapping.c_T.eqidx = [1 2 3 5 ];
M_.mapping.d.eqidx = [1 2 4 ];
M_.mapping.tby.eqidx = [5 ];
M_.mapping.cay.eqidx = [4 ];
M_.mapping.p_N.eqidx = [3 ];
M_.mapping.u_y_T.eqidx = [6 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 6;
M_.block_structure.block(1).endo_nbr = 2;
M_.block_structure.block(1).mfs = 2;
M_.block_structure.block(1).equation = [ 7 6];
M_.block_structure.block(1).variable = [ 7 1];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 5;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 0 1 2 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 2;
M_.block_structure.block(2).mfs = 2;
M_.block_structure.block(2).equation = [ 1 2];
M_.block_structure.block(2).variable = [ 3 2];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 6;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [1 3 4 6 ];
M_.block_structure.block(3).Simulation_Type = 1;
M_.block_structure.block(3).endo_nbr = 2;
M_.block_structure.block(3).mfs = 2;
M_.block_structure.block(3).equation = [ 5 4];
M_.block_structure.block(3).variable = [ 4 5];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [3 4 ];
M_.block_structure.block(4).Simulation_Type = 3;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 3];
M_.block_structure.block(4).variable = [ 6];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 1;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [1 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 2 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 2 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 3 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 1 2 1 2 2 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 3 3 4 4 6 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 2 4 6 6 7 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([]);
M_.block_structure.block(3).g1_sparse_colval = int32([]);
M_.block_structure.block(3).g1_sparse_colptr = int32([]);
M_.block_structure.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.variable_reordered = [ 7 1 3 2 4 5 6];
M_.block_structure.equation_reordered = [ 7 6 1 2 5 4 3];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 3;
 4 3;
 6 1;
 6 7;
 7 1;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 2;
 2 3;
 3 2;
 3 6;
 4 1;
 4 3;
 4 5;
 5 1;
 5 2;
 5 4;
 6 1;
 7 7;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 2;
];
M_.block_structure.dyn_tmp_nbr = 8;
M_.state_var = [7 1 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(7, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(16, 1);
M_.endo_trends = struct('deflator', cell(7, 1), 'log_deflator', cell(7, 1), 'growth_factor', cell(7, 1), 'log_growth_factor', cell(7, 1));
M_.NNZDerivatives = [22; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([6 7 1 4 6 1 4 5 6 1 2 3 5 1 2 4 5 4 3 7 2 6 ]);
M_.dynamic_g1_sparse_colval = int32([1 1 3 3 7 8 8 8 8 9 9 9 9 10 10 10 11 12 13 14 16 22 ]);
M_.dynamic_g1_sparse_colptr = int32([1 3 3 5 5 5 5 6 10 14 17 18 19 20 21 21 22 22 22 22 22 22 23 ]);
M_.lhs = {
'exp(c_T)+d(-1)'; 
'exp(c_T(1))^SIGMA'; 
'exp(p_N)'; 
'cay'; 
'tby'; 
'y_T-log(y_T_ss)'; 
'AUX_ENDO_LAG_0_1'; 
};
M_.static_tmp_nbr = [1; 1; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 1;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 4];
M_.block_structure_stat.block(1).variable = [ 5];
M_.block_structure_stat.block(2).Simulation_Type = 6;
M_.block_structure_stat.block(2).endo_nbr = 2;
M_.block_structure_stat.block(2).mfs = 2;
M_.block_structure_stat.block(2).equation = [ 7 6];
M_.block_structure_stat.block(2).variable = [ 7 1];
M_.block_structure_stat.block(3).Simulation_Type = 6;
M_.block_structure_stat.block(3).endo_nbr = 2;
M_.block_structure_stat.block(3).mfs = 2;
M_.block_structure_stat.block(3).equation = [ 2 1];
M_.block_structure_stat.block(3).variable = [ 3 2];
M_.block_structure_stat.block(4).Simulation_Type = 1;
M_.block_structure_stat.block(4).endo_nbr = 1;
M_.block_structure_stat.block(4).mfs = 1;
M_.block_structure_stat.block(4).equation = [ 5];
M_.block_structure_stat.block(4).variable = [ 4];
M_.block_structure_stat.block(5).Simulation_Type = 3;
M_.block_structure_stat.block(5).endo_nbr = 1;
M_.block_structure_stat.block(5).mfs = 1;
M_.block_structure_stat.block(5).equation = [ 3];
M_.block_structure_stat.block(5).variable = [ 6];
M_.block_structure_stat.variable_reordered = [ 5 7 1 3 2 4 6];
M_.block_structure_stat.equation_reordered = [ 4 7 6 2 1 5 3];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 3;
 2 2;
 2 3;
 3 2;
 3 6;
 4 5;
 5 1;
 5 2;
 5 4;
 6 1;
 6 7;
 7 1;
 7 7;
];
M_.block_structure_stat.tmp_nbr = 9;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 2 1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 1 2 2 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 3 5 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 2 1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 1 2 2 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 3 5 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.static_g1_sparse_rowval = int32([1 5 6 7 1 2 3 5 1 2 5 4 3 6 7 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 2 2 2 2 3 3 4 5 6 7 7 ]);
M_.static_g1_sparse_colptr = int32([1 5 9 11 12 13 14 16 ]);
close all;
warning off ;
M_.params(1) = 1.915;
RHO1 = M_.params(1);
M_.params(2) = (-0.916);
RHO2 = M_.params(2);
M_.params(3) = 0.000295;
ETA_y = M_.params(3);
M_.params(4) = 1;
y_N = M_.params(4);
M_.params(5) = 0.85;
D_BAR = M_.params(5);
M_.params(6) = 0.9635;
BETA = M_.params(6);
M_.params(7) = 0.04;
r_int = M_.params(7);
M_.params(8) = 0.000742;
PSI = M_.params(8);
M_.params(10) = 2;
SIGMA = M_.params(10);
M_.params(9) = 0.25;
A = M_.params(9);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
options_.irf = 100;
options_.nograph = true;
options_.order = 1;
options_.periods = 0;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save TNT.mat M_ oo_ options_;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTalt_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
