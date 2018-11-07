function [hasyahtzee] = yahtzeedetection(hand)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
if hand(1)==hand(2) && hand(2) == hand(3) && hand(3) == hand(4) && hand(4) == hand(5)
    hasyahtzee=true;
else
    hasyahtzee=false;
end
end

