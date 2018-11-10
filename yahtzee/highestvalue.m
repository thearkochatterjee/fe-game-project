function [highest] = highestvalue(hand)
%highestvalue finds the highest value rolled in the hand
high = 0;
for i = 1:1:length(hand)
    if hand(i) > high
        high = hand(i);
    end
end
highest = high;
end

