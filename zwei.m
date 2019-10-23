n=0:1:9550;
approx = nan(size(n));
for k=1:length(n)
    approx(k) = (6 * sum(arrayfun(@(i) 1/i^2, 1:n(k))))^(1/2);
end

abs(approx(9550)-pi)
plot(approx);

%finde n < 10^4 mit abs-fehler <10^-4