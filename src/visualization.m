figure(2); clf;
subplot(2, 1, 1);
plot(out.tout, out.y(:,1), 'r', out.tout, out.y(:,2), 'b'); grid on;
title('Winkel der Roboterarme')
legend('$\varphi_1$','$\varphi_2$', 'Interpreter', 'latex');
xlabel('$t$ $[s]$', 'Interpreter', 'latex');
ylabel('$\varphi_1, \varphi_2$ $[rad]$', 'Interpreter', 'latex');
subplot(2, 1, 2);
plot(out.tout, out.y(:,3), 'r', out.tout, out.y(:,4), 'b'); grid on;
title('Winkelgeschwindigkeit der Roboterarme')
legend('$\dot{\varphi_1}$','$\dot{\varphi_2}$', 'Interpreter', 'latex');
xlabel('$t$ $[s]$', 'Interpreter', 'latex');
ylabel('$\dot{\varphi_1}, \dot{\varphi_2}$ $[rad/s]$', 'Interpreter', 'latex');