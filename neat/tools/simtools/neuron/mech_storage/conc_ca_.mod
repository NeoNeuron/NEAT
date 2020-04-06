: This mod file is automaticaly generated by the ionc.write_mode_file() function in /source/ionchannels.py 

NEURON {
    SUFFIX conc_ca_
    USEION ca READ ica WRITE cai
    RANGE  gamma, gamma_frac, tau, inf
    THREADSAFE
}

PARAMETER {
    gamma_frac = 0.05
    gamma = 51.8213441045
    tau = 80.0 (ms)
    inf = 0.0001 (mM)
}

UNITS {
    (mA) = (milliamp)
    (mV) = (millivolt)
    (mM) = (milli/liter)
}

ASSIGNED {
    ica (mA/cm2)
}

STATE {
    cai (mM)
}

BREAKPOINT {
    SOLVE states METHOD cnexp
}

INITIAL {
    gamma = gamma*gamma_frac
    cai = inf
}

DERIVATIVE states {
    cai' = gamma * ica - (cai - inf) / tau
}

