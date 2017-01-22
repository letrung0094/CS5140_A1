function results = CS5140_A1_B()
%Repeat the experiment m = 300 times, and record for each time how many random trials
%this took. Plot this data as a cumulative density plot where the x-axis records the number of trials required k,
%and the y-axis records the fraction of experiments that succeeded (a collision) after k trials. The plot should
%show a curve that starts at a y value of 0, and increases as k increases, and eventually reaches a y value of 1.

n = 4000;
total_runs = 300;
results3 = zeros(300,1);
sum = 0;

for m=1:total_runs
    k = 0;
    found = 0;
    while(found == 0) 
       a = randi(n,10,1); 
       found = check(a);
       k = k + 1;
    end
    results3(m,1) = k;
    sum = sum + k;
end


cdfplot(results3);
hold on;
xlabel('Number of trials requiring k');
ylabel('Fraction of experiments succeeding after k trials');
title('');

%C: (5 points) Empirically estimate the expected number of k random trials in order to have a collision.
%That is, add up all values k, and divide by m.

sum
res = sum / total_runs

end

function f = check(array)

s1 = size(array,1);
s2 = size(unique(array),1);

if(s2 < s1)
    f = 1;
else
    f = 0;
end
end

