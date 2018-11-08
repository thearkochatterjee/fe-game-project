function [straight] = smallstraight(hand)
% Small Stright - detects there is a small straight in your hand

for i = lowestvalue(hand):1:(lowestvalue(hand)+3)
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

