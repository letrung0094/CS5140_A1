function results = CS5140_A1_A()
% A: (5 points) Generate random numbers in the domain [n] until two have the same value. 
% How many random trials did this take? We will use k to represent this value.

k = 0;
found = 0;
n = 4000;

while(found == 0) 
   a = randi(n,10,1); 
   found = check(a);
   k = k + 1;
end

k
a

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