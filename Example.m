n=0:20  %n soll von 0 bis 10 laufen
approx = nan(size(n));  %definiere Array approx und fülle size(n) Plätze mit nan
err = nan(size(n));


for k=1:length(n)   %k ist hier die Laufvariable, die bis length(n) läuft
    approx(k) = (sum(arrayfun(@(i) 1/factorial(i), 0:n(k))))^(1/2);
    err(k) = abs(exp(1) - approx(k));
end


semilogy(err);
disp('x~ :');
disp(approx(length(n)));
disp('--------');
disp('Abs Fehler: ');
disp(abs(approx(length(n)) - exp(1)));


%dieses Beispiel ist aus der Präsentation Folie 17