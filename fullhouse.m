function [fullhouse] = fullhouse(hand)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if threeofkind(hand)==true || fourofkind(hand)==true
   largestnummatch = 5;
for x=1:1:5
    count = 1;
    for y=x:1:5
        if hand(y) == hand(x)
            count = count + 1;
        end
    end
    if count < largestnummatch
       largestnummatch=count; 
    end
end
if largestnummatch == 2
    fullhouse = true;
else
    fullhouse = false;
end 
end
end

