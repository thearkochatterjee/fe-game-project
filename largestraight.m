function [straight] = largestraight(hand)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
for i = lowestvalue(hand):1:(lowestvalue(hand)+4)
    has = false;
    if isinhand(hand,i) == true
        has = true;
    else
        has = false;
        break;
    end
end
straight = has;
end

