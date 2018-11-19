function [result, category] = ai(usedcategory)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
c = 1;
while 1
    % Creating random dice roll results
    hand = randi([1 6], [1 5]);
    
    % Testing if the computer could claim different categories for scoring
    if yahtzee(hand) == true
        category = 12;
        result = hand;
        break;
    elseif fullhouse(hand) == true
        category = 11;
        result = hand;
        break;
    elseif largestraight(hand) == true
        category = 10;
        result = hand;
        break;
    elseif smallstraight(hand) == true
        category = 9;
        result = hand;
        break;
    elseif fourofkind(hand) == true
        category = 8;
        result = hand;
        break;
    elseif threeofkind(hand) == true
        category = 7;
        result = hand;
        break;
    else
        % If there are no other options computer see what would be the best
        % category to pick with the options avalible if out of rolls
        if c == 3
            % Creating array of possible scores to select from
            scorechoices(1) = 0;
            for i = 1:1:length(hand)
                scorechoices(1) = scorechoices(1) + hand(i);
            end
            for x = 2:1:7
                scorechoices(x) = uppertotal(hand,x);
            end
            
            % Determining highest possible score from options present and
            % returning the category value for what to be scored in
            highscore = 0;
            poshigh = 0;
            for p = 1:1:length(scorechoices)
                if scoreschoices(p) > highscore
                    highscore = scorechoices(p);
                    poshigh = p;
                end
            end
            poshigh = poshigh - 1;
            if poshigh == 0
                poshigh = 13;
            end
            category = poshigh;
            break;
        end
    end
    c=c+1;
end
end

