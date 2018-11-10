function [straight] = smallstraight(hand)
% Small Stright - detects there is a small straight in your hand

% loops through the lowest value in the hand and counts upward to see if
% there are 4 that are consecutive
for i = lowestvalue(hand):1:(lowestvalue(hand)+3)
    has = false;
    if isinhand(hand,i) == true
        has = true;
    else
        has = false;
        break;
    end
end
% detects if the previous section has not detected if a straight is present
if has == false
% loops from the highest value in the hand to three less than the highest
% value testing if the values are consecutive
    for i = highestvalue(hand):-1:highestvalue(hand)-3
        has = false;
        if isinhand(hand,i) == true
            has = true;
        else
            has = false;
            break;
        end
    end
end
% Output the result of if there has been a small straight detection or not
straight = has;
end

