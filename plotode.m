function plotode(n, TA, TS) % n denotes the number of time units to plot
% x, y, z denote the point's starting position
% Try (n, x, y, z) = (100000, 2, 0, 0)

    % Add title, label axes
    hold on
    xlabel('Atmospheric temperature in Kelvin')
    ylabel('Surface temperature in Kelvin')
    zlabel('Time in years')
    title([num2str(n),' years of temperature evolution, beggining at ' ...
        '(',num2str(TA),', ',num2str(TS),')'])

    % Use ode45 to evaluate the point's evolution in the system, and use
    % Plot3 to visualise it
    [t, traj] = ode45(@ode, [0 n], [TA, TS]);
    plot3(traj(:,1),traj(:,2),t,'.','markersize',1)
    fprintf("Final temperature vector: [Atmospheric, Surface] = " + ...
        "[%.2fK, %.2fK] =  [%.2fC, %.2fC].\n", ...
        traj(end,1), traj(end,2), traj(end,1)-273.15, traj(end,2)-273.15);