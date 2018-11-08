function [lowest] = lowestvalue(hand)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
low = 7;
for i = 1:1:length(hand)
    if hand(i) < low
        low = hand(i);
    end
end
lowest = low;
end

