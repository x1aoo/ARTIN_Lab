%stack
%depth first
clear ; close all;
start = [1, 1];
goal = [10, 10];
Map = Map_generate(start, goal)

syms s t r pred W P

P = []; %�ѱ���
pred = []; %���
% r is false
r = 0;
t = goal;
W = []; %������
W = start;

while(~isempty(W) && (r == 0))
%     ջ������ȳ�
    s = W(size(W,1),:);
%     �ж����ҵ�Ŀ��
    if s == t
        r = 1;
    else
        P = [P;s];
    end
    
%     for: �������������꣬��ѡȡ�ڵ�ͼ��Χ�ڵ�����
    for i = 1:4
        a = mod(i,2) * (-1) + (mod(i,2) - 1) * (-1);%����ȡ-1��ż��ȡ1
        %>2ȡ(0,1),<2ȡ(1,0)
        if(i > 2)
            y = 1; x = 0;
        else
            x = 1; y = 0;
        end
        %����a,x,yʹ��A = [-1,0;1,0;-1,-1;-1,1]
        A = [s(1) + a * x, s(2) + a * y];
        if A(1) > 0 && A(1) <= length(Map) && A(2) > 0 && A(2) <= length(Map)
%             δ�ɹ�+++++++
            for i = 1:length(W)
               for j = 1:length(P)
%                    ���������������&��|
                  if A ~= W(i) & A ~= P(j)
                      pred = [pred; A];
                      W = [W;A]; 
                  end
               end
            end
        end                   
    end
end
