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
M_.fname = 'TNTbase';
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
M_.endo_names = cell(6,1);
M_.endo_names_tex = cell(6,1);
M_.endo_names_long = cell(6,1);
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
M_.endo_partitions = struct();
M_.param_names = cell(15,1);
M_.param_names_tex = cell(15,1);
M_.param_names_long = cell(15,1);
M_.param_names(1) = {'RHO'};
M_.param_names_tex(1) = {'RHO'};
M_.param_names_long(1) = {'RHO'};
M_.param_names(2) = {'ETA_y'};
M_.param_names_tex(2) = {'ETA\_y'};
M_.param_names_long(2) = {'ETA_y'};
M_.param_names(3) = {'y_N'};
M_.param_names_tex(3) = {'y\_N'};
M_.param_names_long(3) = {'y_N'};
M_.param_names(4) = {'D_BAR'};
M_.param_names_tex(4) = {'D\_BAR'};
M_.param_names_long(4) = {'D_BAR'};
M_.param_names(5) = {'BETA'};
M_.param_names_tex(5) = {'BETA'};
M_.param_names_long(5) = {'BETA'};
M_.param_names(6) = {'r_int'};
M_.param_names_tex(6) = {'r\_int'};
M_.param_names_long(6) = {'r_int'};
M_.param_names(7) = {'PSI'};
M_.param_names_tex(7) = {'PSI'};
M_.param_names_long(7) = {'PSI'};
M_.param_names(8) = {'alpha'};
M_.param_names_tex(8) = {'alpha'};
M_.param_names_long(8) = {'alpha'};
M_.param_names(9) = {'SIGMA'};
M_.param_names_tex(9) = {'SIGMA'};
M_.param_names_long(9) = {'SIGMA'};
M_.param_names(10) = {'y_T_ss'};
M_.param_names_tex(10) = {'y\_T\_ss'};
M_.param_names_long(10) = {'y_T_ss'};
M_.param_names(11) = {'d_ss'};
M_.param_names_tex(11) = {'d\_ss'};
M_.param_names_long(11) = {'d_ss'};
M_.param_names(12) = {'c_T_ss'};
M_.param_names_tex(12) = {'c\_T\_ss'};
M_.param_names_long(12) = {'c_T_ss'};
M_.param_names(13) = {'tby_ss'};
M_.param_names_tex(13) = {'tby\_ss'};
M_.param_names_long(13) = {'tby_ss'};
M_.param_names(14) = {'cay_ss'};
M_.param_names_tex(14) = {'cay\_ss'};
M_.param_names_long(14) = {'cay_ss'};
M_.param_names(15) = {'p_N_ss'};
M_.param_names_tex(15) = {'p\_N\_ss'};
M_.param_names_long(15) = {'p_N_ss'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 6;
M_.param_nbr = 15;
M_.orig_endo_nbr = 6;
M_.aux_vars = [];
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
M_.eq_nbr = 6;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 3 0;
 0 4 9;
 2 5 0;
 0 6 0;
 0 7 0;
 0 8 0;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 2;
M_.ndynamic   = 3;
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
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 6];
M_.block_structure.block(1).variable = [ 1];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
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
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 1 2 1 2 2 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 3 3 4 4 6 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 2 4 6 6 7 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([]);
M_.block_structure.block(3).g1_sparse_colval = int32([]);
M_.block_structure.block(3).g1_sparse_colptr = int32([]);
M_.block_structure.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.variable_reordered = [ 1 3 2 4 5 6];
M_.block_structure.equation_reordered = [ 6 1 2 5 4 3];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 3;
 4 3;
 6 1;
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
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 2;
];
M_.block_structure.dyn_tmp_nbr = 8;
M_.state_var = [1 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(6, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(15, 1);
M_.endo_trends = struct('deflator', cell(6, 1), 'log_deflator', cell(6, 1), 'growth_factor', cell(6, 1), 'log_growth_factor', cell(6, 1));
M_.NNZDerivatives = [19; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([6 1 4 1 4 5 6 1 2 3 5 1 2 4 5 4 3 2 6 ]);
M_.dynamic_g1_sparse_colval = int32([1 3 3 7 7 7 7 8 8 8 8 9 9 9 10 11 12 14 19 ]);
M_.dynamic_g1_sparse_colptr = int32([1 2 2 4 4 4 4 8 12 15 16 17 18 18 19 19 19 19 19 20 ]);
M_.lhs = {
'exp(c_T)+d(-1)'; 
'exp(c_T(1))^SIGMA'; 
'exp(p_N)'; 
'cay'; 
'tby'; 
'y_T-log(y_T_ss)'; 
};
M_.static_tmp_nbr = [1; 1; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 1;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 4];
M_.block_structure_stat.block(1).variable = [ 5];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 6];
M_.block_structure_stat.block(2).variable = [ 1];
M_.block_structure_stat.block(3).Simulation_Type = 6;
M_.block_structure_stat.block(3).endo_nbr = 2;
M_.block_structure_stat.block(3).mfs = 2;
M_.block_structure_stat.block(3).equation = [ 2 1];
M_.block_structure_stat.block(3).variable = [ 2 3];
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
M_.block_structure_stat.variable_reordered = [ 5 1 2 3 4 6];
M_.block_structure_stat.equation_reordered = [ 4 6 2 1 5 3];
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
];
M_.block_structure_stat.tmp_nbr = 8;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 2 1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 1 2 2 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 3 5 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.static_g1_sparse_rowval = int32([1 5 6 1 2 3 5 1 2 5 4 3 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 2 3 3 4 5 6 ]);
M_.static_g1_sparse_colptr = int32([1 4 8 10 11 12 13 ]);
close all;
warning off ;
M_.params(1) = 0.2731;
RHO = M_.params(1);
M_.params(2) = 0.0656;
ETA_y = M_.params(2);
M_.params(3) = 4;
y_N = M_.params(3);
M_.params(4) = 4.07;
D_BAR = M_.params(4);
M_.params(5) = 0.9615;
BETA = M_.params(5);
M_.params(6) = 0.04;
r_int = M_.params(6);
M_.params(7) = 0.000742;
PSI = M_.params(7);
M_.params(9) = 2;
SIGMA = M_.params(9);
M_.params(8) = 0.2;
alpha = M_.params(8);
d0     = 2.36;                  
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = log(M_.params(10));
oo_.steady_state(3) = d0;
oo_.steady_state(2) = log(M_.params(12));
oo_.steady_state(6) = log(M_.params(15));
oo_.steady_state(4) = M_.params(13);
oo_.steady_state(5) = M_.params(14);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% ENDVAL instructions
%
oo_.initial_steady_state = oo_.steady_state;
oo_.initial_exo_steady_state = oo_.exo_steady_state;
oo_.steady_state(1) = 0.09531017980432493;
oo_.steady_state(3) = d0;
oo_.steady_state(2) = log(M_.params(12));
oo_.steady_state(6) = log(M_.params(15));
oo_.steady_state(4) = M_.params(13);
oo_.steady_state(5) = M_.params(14);
options_.periods = 20;
oo_ = perfect_foresight_setup(M_, options_, oo_);
[oo_, Simulated_time_series] = perfect_foresight_solver(M_, options_, oo_);
save model_with_debt.mat M_ oo_ options_;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'TNTbase_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
