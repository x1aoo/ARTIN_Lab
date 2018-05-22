function Map = Map_generate(start,goal)
Start = [1, 1];
goal = [10, 10];
% clear; close all;
% rng - ì
% rng(100);
Map = round( rand(10,10) > 0.3);
if Map(start) == 0
    Map(start) = 1;
end
if Map(goal) == 0
    Map(goal) = 1;
end

spy(Map);


end
