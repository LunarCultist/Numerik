n=1:100:2000;
%n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = (16/5) * sum(arrayfun(@(k) (-1)^k/((2*k+1)*5^(2*k)),0:n(k))) - sum(arrayfun(@(k) (-1)^k/((2*k+1)*239^(2*k)),0:n(k)));
    
end


plot(approx);
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - pi));