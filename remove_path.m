<<<<<<< HEAD
function [pts2]=remove_path(pts,ind)
n = 1;
m = 1;
pts2 = [];
while m <= length(pts)
    if ind ~= m
        pts2(n) = pts(m);
        n = n + 1;
        m = m + 1;
    else
        m = m + 1;
    end
=======
function pts2=remove_path(pts,ind)
pts2=[];
n=1;
m=1;
while m<=length(pts)
if ind~=m
pts2(n)=pts(m);
n=n+1;
m=m+1;
else
m=m+1;
end
>>>>>>> origin/master
end
end