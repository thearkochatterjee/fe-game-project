function [total] = uppertotal(hand,value)
%uppertotal creates a sum of all the values for the upper section of the
% scoring sheet
roundscore = 0;
for i=1:1:length(hand)
    if dice_results(i) == value
        roundscore = roundscore + value;
    end
end
total = roundscore;
end

