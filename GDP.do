clear all
capture log close

import excel "/Users/ninadicostanzopereira/Desktop/Fulminante/Fulminante_G2.xlsx", sheet("Hoja1") firstrow clear

rename rgdpe Y_T_raw

gen log_Y_T = log(Y_T_raw)

gen t = _n
tsset t, yearly

//rechazo
dfgls log_Y_T
dfuller log_Y_T, trend lags(1)

gen d_log_Y_T = D.log_Y_T
reg d_log_Y_T L1.d_log_Y_T

display "rho_y:", _b[L1.d_log_Y_T]
// .2731
display "eta_y:", e(rmse)

// .06560
