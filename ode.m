function dTdt = ode(t, T)
    Q=340;
    RA=0.224;
    RS=2.8;
    gamA=0.23;
    gamS=0.47;
    sigma=5.6703*10^(-8);
    epsA=0.8;
    epsS=0.96;
    r=0.2;
    betaA=0.8;
    dTdt = [1/(RA)*(Q*gamA+(1-r)*epsS*sigma*T(2)^4*betaA-epsA*sigma*T(1)^4);
        1/(RS)*(Q*gamS+epsA*sigma*T(1)^4*0.5-(1-r)*epsS*sigma*T(2)^4)];
end