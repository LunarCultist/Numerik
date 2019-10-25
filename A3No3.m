n=0:100;
%n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = 2 * sqrt(3) * sum(arrayfun(@(j) (-1)^j/(2*j+1) * 3^j, 0:n(k)));  %2j ist offenbar != 2*j
end


plot(approx);
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - pi));

%Werte in Approx sind komplex?