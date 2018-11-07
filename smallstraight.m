function [straight] = smallstraight(hand)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
for i = lowestvalue(hand):1:(lowestvalue(hand)+3)
    has = false;
    if isinhand(hand,i) == true
        has = true;
    else
        break;
    end
end
straight = has;
end

