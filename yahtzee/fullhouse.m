function [fullhouse] = fullhouse(hand)
%full house detects if there is a three of a kind and a pair present in the
% hand

%intialize the count for detecting if there is a pair
count = 0;
% Testing if there is a three of a kind but not a four of a kind so it is
% possible for a pair to be present
if threeofkind(hand) == true && fourofkind == false
    % Loops through all elements of hand array
    for i = 1:1:length(hand)
        % Test if value tested is present in the hand and counts the
        % occurances
        if isinhand(hand,i)
            count = count + 1;
        end
    end
end
% Output results for if there is a full house or not
if count == 2
    fullhouse = true;
else
    fullhouse = false;
end
end

