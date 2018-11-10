function [hasyahtzee] = yahtzeedetection(hand)
%yahtzeedetecttion detects if all the dice in the hand are the same value
if hand(1)==hand(2) && hand(2) == hand(3) && hand(3) == hand(4) && hand(4) == hand(5)
    hasyahtzee=true;
else
    hasyahtzee=false;
end
end

