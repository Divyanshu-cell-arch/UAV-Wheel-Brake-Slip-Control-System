% Wheel velocities 
tW = out.W.time;
w   = squeeze(out.W.signals.values);

% Vehicle velocity 
tV = out.V.time;
v   = out.V.signals.values;

% Slip
tS = out.S.time;
slip = squeeze(out.S.signals.values);

% Error (Nx4)
tE = out.E.time;
error = squeeze(out.E.signals.values);

% Control effort 
tU = out.U.time;
u = squeeze(out.U.signals.values);

% Plot Wheel Velocities
figure;
plot(tW, w(:,1), 'b', tW, w(:,2), 'r', 'LineWidth',1.2);
xlabel('Time [s]'); ylabel('Wheel Velocity [rad/s]');
legend(); grid on; title('Wheel Velocity'); legend('LM','RM'); grid on; title('Wheel Velocity');

% Plot Vehicle Velocity
figure;
plot(tV, v, 'LineWidth',1.5); grid on;
xlabel('Time [s]'); ylabel('Vehicle Velocity [m/s]'); legend('LM','RM'); grid on; title('Vehicle Velocity');
title('Vehicle Velocity');


%% Plot Wheel Slip
figure;
plot(tS, slip(:,1),'b', tS, slip(:,2),'r','LineWidth',1.2);
xlabel('Time [s]'); ylabel('Slip'); legend('LM','RM'); grid on; title('Wheel Slip');

%% Plot Error Signals
figure;
plot(tE, error(:,1),'b', tE, error(:,2),'r','LineWidth',1.2);
xlabel('Time [s]'); ylabel('Error'); legend('LM','RM','LR'); grid on; title('Error Signals');

%% Plot Control Effort
figure;
plot(tU, u(:,1),'b', tU, u(:,2),'r','LineWidth',1.2);
xlabel('Time [s]'); ylabel('Control Effort'); legend('LM','RM'); grid on; title('Controller Outputs');

