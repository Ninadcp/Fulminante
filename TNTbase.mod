%----------------------------------------------------------------
% FULMINANTE
% Integrantes: 

%----------------------------------------------------------------

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;
warning off ;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

// Endogenous variables 
var y_T c_T d tby cay p_N; 

// Exogenous variables 
// Cambie el nombre del shock para poder graficarlo luego en el doing_plots
varexo u_y_T; 

// Parameters 
parameters RHO1 RHO2 ETA_y y_N D_BAR BETA r_int PSI A SIGMA;
parameters y_T_ss d_ss c_T_ss tby_ss cay_ss p_N_ss;

%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

// Calibarted parameteres 
RHO1 = 1.913;
RHO2 = -0.914;
ETA_y = 0.00011;
y_N=1;
D_BAR=0.85;
BETA=0.9635;
r_int=0.04;
PSI=0.000742;
SIGMA = 2;
A = 0.25;


%----------------------------------------------------------------
% 3. Model (1 equations)
%----------------------------------------------------------------

model; 

// Resource constraint
//exp(c_T)+d=(d(+1)/(1+r_int+PSI*(exp(d(-1)-D_BAR)-1)))+exp(y_T);
exp(c_T)+d(-1)=(d/(1+r_int+PSI*(exp(d-D_BAR)-1)))+exp(y_T);

// Euler
//exp(c_T(+1))^SIGMA=BETA*(1+r_int+PSI*(exp(d(-1)-D_BAR)-1))*exp(c_T)^SIGMA;
exp(c_T(+1))^SIGMA=BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*exp(c_T)^SIGMA;

//Relative demand NT
//p_N=(GAMMA*exp(c_T))/y_N;
exp(p_N)=(A/(1-A))*(((exp(c_T))/y_N)^SIGMA);

// Definition of current account as a ratio of gdp

cay = (d(-1)-d)/exp(y_T);

// Definition of trade balance as a ratio of gdp

tby = (exp(y_T)- exp(c_T));

// Stochastic process for produtivity
(y_T-log(y_T_ss))=RHO1*(y_T(-1)-log(y_T_ss))+RHO2*(y_T(-2)-log(y_T_ss))+ ETA_y*u_y_T;

end;

%----------------------------------------------------------------
% 4. Steady State
%----------------------------------------------------------------

steady_state_model; 

// Computing the steady state and calibrated parameters
y_T_ss=1;
BETA = 1/(1+r_int);
d_ss=D_BAR;
c_T_ss=y_T_ss-(D_BAR*r_int)/(1+r_int);
p_N_ss=A/(1-A)*((c_T_ss)/y_N)^SIGMA;
tby_ss = (y_T_ss - c_T_ss); //trade balance
cay_ss = 0; // Current account

// Assigning logs to those variables that are log-linearized, and teh actual value for those thata are just linearized
y_T = log(y_T_ss); 
d=d_ss;
c_T=log(c_T_ss);
p_N=log(p_N_ss);
tby   = tby_ss;
cay   = cay_ss;   
end;

%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------

steady; // Checking that proposed staedsy state satisfy equations in static form

check; // Check that the solution is unique

// Defining variance of exogneous variables
shocks;
    var u_y_T=1;
end;

// Computing the solution, moments and impulse responses 
stoch_simul(periods=0, irf = 100, order = 1, nograph);

// Saving results 
save TNTc1.mat M_ oo_ options_;

