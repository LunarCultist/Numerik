n=0:10^4  %n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = (6 * sum(arrayfun(@(i) 1/i^2, 1:n(k))))^(1/2);
end


plot(approx);
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - exp(1)));


%insert anything you want in the "approx(k) =" line
