function [indp] = path_minimun_weight (pts)
n = 1;
min = inf;
while n <= length(pts)
    if pts(n).points(lenght(p.points)).weight < min
        min = pts(n).points(lenght(p.points)).weight;
        m = n;
    end
    n = n + 1;
end
indp = m;
end