function Map = Map_generate(start,goal)

% clear; close all;
% rng - 矛
% rng(100);
Map = round( rand(goal) > 0.3);
% 使得起始点和目标点不为空
if Map(start) == 0
    Map(start) = 1;
end
if Map(goal) == 0
    Map(goal) = 1;
end

spy(Map);


end
