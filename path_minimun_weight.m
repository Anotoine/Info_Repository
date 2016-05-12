function [indp] = path_minimun_weight (pts)
n = 1;
min = inf;
while n <= length(pts)
    if pts(n).points(lenght).weight < min
        min = pts(n).points(lenght(pts(n).points)).weight;
        m = n;
    end
    n = n + 1;
end
indp = m;
end