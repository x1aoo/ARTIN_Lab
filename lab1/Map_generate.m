function Map = Map_generate(start,goal)

% clear; close all;
% rng - ì
% rng(100);
Map = round( rand(goal) > 0.3);
% ʹ����ʼ���Ŀ��㲻Ϊ��
if Map(start) == 0
    Map(start) = 1;
end
if Map(goal) == 0
    Map(goal) = 1;
end

spy(Map);


end
