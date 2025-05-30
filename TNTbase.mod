%----------------------------------------------------------------
% FULMINANTE
% Autores: Anchorena....
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
//varexo u_y_T; 

// Parameters 
parameters RHO ETA_y y_N D_BAR BETA r_int PSI alpha SIGMA;
parameters y_T_ss d_ss c_T_ss tby_ss cay_ss p_N_ss;

%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------

// Calibarted parameteres 

RHO    = 0.2731;                 //STATA
ETA_y  = 0.0656;                 //STATA
y_N    = 4;
D_BAR  = 4.07;                  //NOSE
BETA   = 0.9615;                // 1/(1 + r_int) si r_int = 0.04
r_int  = 0.04;
PSI    = 0.000742;
SIGMA  = 2;
alpha  = 0.2;
d0     = 2.36;                  //CALCULAMOS            

%----------------------------------------------------------------
% 3. Model Equations (n equations)
%----------------------------------------------------------------

model; 

// Resource constraint
exp(c_T)+d(-1)=(d/(1+r_int+PSI*(exp(d-D_BAR)-1)))+exp(y_T);

// Euler
exp(c_T(+1))^SIGMA=BETA*(1+r_int+PSI*(exp(d-D_BAR)-1))*exp(c_T)^SIGMA;

//Relative demand NT
exp(p_N) = (alpha/(1-alpha))*(((exp(c_T))/y_N)^SIGMA);

// Definition of current account as a ratio of gdp

cay = (d(-1) - d)/exp(y_T);        // current account = Δdebt / GDP

// Definition of trade balance as a ratio of gdp

tby = (exp(y_T) - exp(c_T));       // trade balance = output - consumption

// Stochastic AR(1) process for produtivity
//(y_T-log(y_T_ss)) = RHO*(y_T(-1) - log(y_T_ss)) + ETA_y * u_y_T;

Y

end;

%----------------------------------------------------------------
% 5. Steady State
%----------------------------------------------------------------

steady_state_model;

y_T_ss   = 1;
BETA     = 1 / (1 + r_int);                    // Consistent with r_int
d_ss     = D_BAR;
c_T_ss   = y_T_ss - (D_BAR * r_int) / (1 + r_int);
p_N_ss   = alpha / (1 - alpha) * ((c_T_ss / y_N)^SIGMA);
tby_ss   = y_T_ss - c_T_ss;
cay_ss   = 0;

y_T      = log(y_T_ss);
d        = d_ss;
c_T      = log(c_T_ss);
p_N      = log(p_N_ss);
tby      = tby_ss;
cay      = cay_ss;

end;

%----------------------------------------------------------------
% 7. Computation
%----------------------------------------------------------------

steady; // Checking that proposed steady state satisfy equations in static form

check; // Check that the solution is unique

%----------------------------------------------------------------
% 8. Shocks
%----------------------------------------------------------------
// Defining variance of exogneous variables

//shocks;
  //  var u_y_T = 1;
//end;

%----------------------------------------------------------------
% 9. Simulation (Impulse Response Functions)
%----------------------------------------------------------------

initval;
    y_T = log(y_T_ss);
    d = d0;             // Initial value of d (formerly used to be in histval)
    c_T = log(c_T_ss);
    p_N = log(p_N_ss);
    tby = tby_ss;
    cay = cay_ss;
end;

endval;
    y_T = log(1.1);    // Apply deterministic shock here (+ 10%)
    d   = D_BAR;       //Detbt never changed?
    c_T = log(c_T_ss);
    p_N = log(p_N_ss);
    tby = tby_ss;
    cay = cay_ss;
end;

perfect_foresight_setup(periods=20);
perfect_foresight_solver;
%----------------------------------------------------------------
% 10. Save Results
%----------------------------------------------------------------

save model_with_debt.mat M_ oo_ options_;
