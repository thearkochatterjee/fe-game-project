function [total] = uppertotal(hand,value)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
roundscore = 0;
for i=1:1:length(hand)
    if dice_results(i) == value
        roundscore = roundscore + value;
    end
end
total = roundscore;
end

