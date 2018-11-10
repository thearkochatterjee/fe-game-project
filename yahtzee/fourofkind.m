function [kind] = fourofkind(hand)
%fourofkind detects if 4 of the 5 dice match

% Intializing the count variable for each value of a possible dice roll
for x = 1:1:6
    count(x) = 0;
end

% Loop through each possible outcome for a dice roll
for v = 1:1:6
    % Loop through all values in the hand and count the occurrange of v
    for i = 1:1:length(hand)
        if hand(i) == v
            count(v) = count(v) + 1;
        end
    end
end
% Test if the highest number of matches is at least 3 to see if it is
% possible to declare that there is a three of a kind present in the hand
if highestvalue(count) >= 4
    kind = true;
else
    kind = false;
end
end
%luv github =- gaven

