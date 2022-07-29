fis = readfis('laba2kov.fis');
x = [0 0];
out = zeros(2,500);
Tc = zeros(1,500);
Th = zeros(1,500);
T = zeros(1,500);
qc = zeros(1,501);
qh = zeros(1,501);
qc(1) = 1/1000000000;
qh(1) = 1/1000000000;
q = zeros(1,500);
for t = 1:500
    Tc(t) = 15 + 10*sin(pi*t/50 + 20);
    Th(t) = 50 + 10*cos(pi*t/60);
    T(t) = (Tc(t)*qc(t) + Th(t)*qh(t))/(qc(t) + qh(t));
    q(t) = (qc(t) + qh(t))/2;
    x = [q(t) T(t)];
    y = evalfis(x, fis);
    out(1,t) = y(1);
    out(2,t) = y(2);
    qc(t+1) = qc(t) + 50*y(1);
    qh(t+1) = qh(t) + 50*y(2);
    if qc(t+1) < 0
        qc(t+1) = 0.000001;
    elseif qc(t+1) > 100
        qc(t+1) = 100;
    end;
    if qh(t+1) < 0
        qh(t+1) = 0.000001;
    elseif qh(t+1) > 100
        qh(t+1) = 100;
    end;
    
end;
i = 1:500;
figure(1);
plot(i,T(i));
grid on;
figure(2);
plot(i,q(i));
grid on;