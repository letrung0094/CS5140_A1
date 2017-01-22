function results1 = CS5140_A1_2_D()
%Describe how you implemented this experiment and how long it took for n = 200 and
%m = 300 trials.
%Show a plot of the run time as you gradually increase the parameters n and m. (For at least 3 fixed values
%of m between 300 and 5,000, plot the time as a function of n.) You should be able to reach n = 20,000 and
%m = 5,000.


total_runs = [500,2500,5000];
results = zeros(100,2);
i = 0;

for m1=1:3
    for n=300:100:2000
        tic;
        for m=1:total_runs(m1)
            k = 0;
            res = 0;
            found_array = zeros(n,1);
            while(res == 0) 
                a = randi(n,20,1); 
                [res,found_array] = check(a,found_array,n);
                k = k + 1;
            end
        end
        t = toc
        i = i + 1
        results(i,1) = t;
        results(i,2) = n;
    end
end

res1000runs = results(1:18);
res5000runs = results(19:36);
res10000runs = results(37:54);

value_of_n = [300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000];

figure
subplot(2,2,1)       % add first plot in 2 x 2 grid
plot(value_of_n,res1000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 500')

subplot(2,2,2)       % add second plot in 2 x 2 grid
plot(value_of_n,res5000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 2500')

subplot(2,2,3)       % add third plot in 2 x 2 grid
plot(value_of_n,res10000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 5000')



end

function [res,f_a] = check(array,found_array,n)
f_a = found_array;
for i=1:size(array,1)
    f_a(array(i)) = 1;
end


if(sum(f_a)==n)
   res = 1; 
else
   res = 0;
end

end






