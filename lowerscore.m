function [score] = lowerscore(hand)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
score=0;
if fourofkind(hand)==true || threeofkind(hand)==true
    for i = 1:1:length(hand)
       score = score + hand(i); 
    end
end
if yahtzeedetection(hand) == true
    score = score + 50;
end
end

