function [fullhouse] = fullhouse(hand)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
count = 0;
if threeofkind(hand) == true && fourofkind == false
    for i = 1:1:length(hand)
        if isinhand(hand,i)
            count = count + 1;
        end
    end
end
if count == 2
    fullhouse = true;
else
    fullhouse = false;
end
end

