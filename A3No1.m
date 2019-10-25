n=0:10  %n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = %hier fehlt die Formel noch
end


plot(approx);
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - exp(1)));