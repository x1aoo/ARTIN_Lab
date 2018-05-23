%stack
%depth first
clear ; close all;
start = [1, 1];
goal = [10, 10];
Map = Map_generate(start, goal)

syms s t r pred W P

P = []; %已遍历
pred = []; %结果
% r is false
r = 0;
t = goal;
W = []; %待遍历
W = start;

while(~isempty(W) && (r == 0))
%     栈，后进先出
    s = W(size(W,1),:);
%     判断是找到目标
    if s == t
        r = 1;
    else
        P = [P;s];
    end
    
%     for: 遍历附近的坐标，并选取在地图范围内的坐标
    for i = 1:4
        a = mod(i,2) * (-1) + (mod(i,2) - 1) * (-1);%奇数取-1，偶数取1
        %>2取(0,1),<2取(1,0)
        if(i > 2)
            y = 1; x = 0;
        else
            x = 1; y = 0;
        end
        %操作a,x,y使得A = [-1,0;1,0;-1,-1;-1,1]
        A = [s(1) + a * x, s(2) + a * y];
        if A(1) > 0 && A(1) <= length(Map) && A(2) > 0 && A(2) <= length(Map)
%             未成功+++++++
            for i = 1:length(W)
               for j = 1:length(P)
%                    向量的与或运算用&和|
                  if A ~= W(i) & A ~= P(j)
                      pred = [pred; A];
                      W = [W;A]; 
                  end
               end
            end
        end                   
    end
end
