function [kind] = threeofkind(hand)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
largestnummatch = 0;
for x=1:1:6
    count = 1;
    for y=2:1:6
        if hand(y) == hand(x)
            count = count + 1;
        end
    end
    if count > largestnummatch
       largestnummatch=count; 
    end
end
largestnummatch
if largestnummatch == 3
    kind = true;
else
    kind = false;
end
end

