n=0:1:1000;
%n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan
err = nan(size(n));
graph = nan(size(n));


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = (6 * sum(arrayfun(@(i) 1/i^2, 1:n(k))))^(1/2);
    err(k) = abs(approx(k) - pi);
    graph(k) = 1^(-k);  %graph soll eine Funktion sein,die sich approx annährt, um das Konvergenzverhalten zu bestimmen
end

semilogy(err, '-o');
hold on;
semilogy(graph);
hold off;
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - pi));