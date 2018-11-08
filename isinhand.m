function [contains] = isinhand(hand,value)
%isinhand - detects if a specific value is in the array hand


con = false;
for i = 1:1:length(hand)
    if hand(i) == value
        con = true;
        break;
    end
end
contains = con;
end

