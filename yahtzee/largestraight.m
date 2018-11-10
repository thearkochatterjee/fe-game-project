function [straight] = largestraight(hand)
%largestraight detects if all the values rolled in the hand are consecutive

% looping from the lowest value in the hand to 4 higher then the lowest
for i = lowestvalue(hand):1:(lowestvalue(hand)+4)
    % Intialize variable to detect if the value being tested by the loop is
    % present in the hand
    has = false;
    if isinhand(hand,i) == true
        has = true;
    else
        has = false;
        break;
    end
end
% Output results after the loop has run through testing all the values
% needed
straight = has;
end

