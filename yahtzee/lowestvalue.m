function [lowest] = lowestvalue(hand)
%lowestvalue finds the lowest value of all the dice rolled in the hand

% Intialize the low value to high value so none of the possible values are
% excluded from being the lowest
low = 7;
% Loop through all values rolled present in the hand
for i = 1:1:length(hand)
    % Compare the current value being checked to the current lowest and if
    % it is lower than the lowest value will be adjusted
    if hand(i) < low
        low = hand(i);
    end
end
% Sets the lowest value in the hand to the low after the loop as gone
% through all the dice rolled
lowest = low;
end

