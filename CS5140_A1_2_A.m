function results = CS5140_A1_2_A()
%Consider a domain [n] of size n = 200.
%A: (5 points) Generate random numbers in the domain [n] until every value i ? [n] has had one random
%number equal to i. How many random trials did this take? We will use k to represent this value.

n = 200;

k = 0;
res = 0;
found_array = zeros(n,1);


while(res == 0) 
   a = randi(n,1,1);
   [res,found_array] = check(a,found_array);
   k = k + 1;
end
k
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


