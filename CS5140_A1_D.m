function results = CS5140_A1_D()
%D: (10 points) Describe how you implemented this experiment and how long it took for m = 300 trials.
%Show a plot of the run time as you gradually increase the parameters n and m. (For at least 3 fixed values
%of m between 300 and 10,000, plot the time as a function of n.) You should be able to reach values of
%n = 1,000,000 and m = 10,000.
clc;
n = 4000;
total_runs = [1000, 5000, 10000];
sum = 0;
i = 0;

results = zeros(30,2);

for m1=1:3
    for n=4000:1000:20000
        tic;
        for m=1:total_runs(m1) 
            k = 0;
            found = 0;
            while(found == 0) 
               a = randi(n,10,1); 
               found = check(a);
               k = k + 1;
            end
        end
        t = toc;
        n;
        total_runs(m1);
        t;
        i = i + 1
        results(i,2) = n;
        results(i,1) = t;
        
    end    
end

res1000runs = results(1:17);
res5000runs = results(18:34);
res10000runs = results(35:51);

value_of_n = [4000,5000,6000,7000,8000,9000,10000,11000,12000,13000,14000,15000,16000,17000,18000,19000,20000];




figure
subplot(2,2,1)       % add first plot in 2 x 2 grid
plot(value_of_n,res1000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 1000')

subplot(2,2,2)       % add second plot in 2 x 2 grid
plot(value_of_n,res5000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 5000')

subplot(2,2,3)       % add third plot in 2 x 2 grid
plot(value_of_n,res10000runs);
xlabel('Value of n');
ylabel('Time taken in seconds');
title('m = 10000')


end

function f = check(array)

for i = 1:10
    for r = 1:10
        if(i ~= r)
            if(array(i) == array(r))
                f = 1;
                return;
            end
        end
    end
    
end

f = 0;

end