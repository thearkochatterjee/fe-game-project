function [contains] = isinhand(hand,value)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
con = false;
for i = 1:1:length(hand)
    if hand(i) == value
        con = true;
        break;
    end
end
contains = con;
end

