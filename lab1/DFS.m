%stack
clear ; close all;
start = [1, 1];
goal = [10, 10];
Map = Map_generate(start, goal)

syms s t r pred W P test
W = zeros();
P = zeros();
pred = zeros();
% r is false
r = 0;
% s = start;
s = [0,0];
t = goal;
W = s;

while(~isempty(W) && (r == 0))
    test =[];
    for i = 1:4
        a = mod(i,2) * (-1) + (mod(i,2) - 1) * (-1);%奇数取1，偶数取-1
        %>2取0，<2取1
        if(i > 2)
            b = 0;
        else
            b = 1;
        end

%         A = [s(1) - a * b, s(2) + a * b]  %待修改
        test = [test; A];
%         test(s(1) + a * b, s(2) + a * b) = 1;
    end

end
