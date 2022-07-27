function dTdt = ode(t, T)
    Q=340; % Solar const.

    % Specific heat conversion factor for the atmosphere.
    RA=0.224; % Calculated by Red from specific heat of air

    % Specific heat conversion factor for the surface of earth.
    RS=2.8; % Educated guess

    gamA=0.23; % Proportion of solar radation absorbed by Atmo.
    gamS=0.47; % Proportion of solar radation absorbed by Surface.
    sigma=5.6703*10^(-8); % Stefan Boltzmann constant
    epsA=0.8; % Emissivity of air
    epsS=0.96; % Emissivity of earth's surface

    r=0.15; % Proportion of longwave radiation emmitted by earth's surface
    % that is reflected back. Guesswork.

    betaA=0.65; % Proportion of non-reflected longwave radiation emmited by 
    % earth's surface that is absorbed by the atmosphere. Guesswork.

    % Full coupled differential equations. TS represents the temperature of
    % the surface of the earth in kelvin, similarly for TA the atmosphere.
    % t is time in years.
    dTdt = [1/(RA)*(Q*gamA+betaA*epsS*sigma*T(2)^4-epsA*sigma*T(1)^4);
        1/(RS)*(Q*gamS+epsA*sigma*T(1)^4*0.5-(1-r)*epsS*sigma*T(2)^4)];
end