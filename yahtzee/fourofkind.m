function [kind] = fourofkind(hand)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
largestnummatch = 0;
for x=1:1:5
    count = 1;
    for y=x:1:5
        if hand(y) == hand(x)
            count = count + 1;
        end
    end
    if count > largestnummatch
       largestnummatch=count; 
    end
end
if largestnummatch == 4
    kind = true;
else
    kind = false;
end
end

