function results1 = CS5140_A1_2_B()
%Repeat step A for m = 300 times, and for each repetition record the value k of how many
%random trials we required to collect all values i ? [n]. Make a cumulative density plot as in 1.B.

n = 200;
total_runs = 300;
results = zeros(total_runs,1);
s = 0;

for m=1:total_runs
    k = 0;
    res = 0;
    found_array = zeros(n,1);
    while(res == 0) 
        a = randi(n,20,1); 
        [res,found_array] = check(a,found_array);
        k = k + 1;
        s = s + k;
    end
    results(m,1) = k;
end

s

end

function [res,f_a] = check(array,found_array)
f_a = found_array;
for i=1:size(array,1)
    f_a(array(i)) = 1;
end


if(sum(f_a)==200)
   res = 1; 
else
   res = 0;
end
end


