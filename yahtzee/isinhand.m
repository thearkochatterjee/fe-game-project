function [contains] = isinhand(hand,value)
%isinhand - detects if a specific value is in the array hand

% Intialize detection variable to false
con = false;
% Loop through all element of the hand array
for i = 1:1:length(hand)
    % Detects if the value is present in the hand
    if hand(i) == value
        con = true;
        break;
    end
end
% Output results for if the value tested is anywhere in the array or not
contains = con;
end

