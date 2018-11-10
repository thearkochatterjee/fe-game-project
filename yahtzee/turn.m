function [roundscore, category] = turn()
%turn plays the players turn for a round and returns the score that they
%achieved

% Intialize variables for operation of the game
rollagain = 'y';

% Intial roll results
dice_results = randi([1,6],1,5)

% Loop until the player does not want to roll again
while rollagain=='y'
    i=1;

    % Ask if the player wants to roll again
    rollagain=input('Do you want to roll again?\n','s');
    more = 'y';
    if rollagain=='y'
        
        % Loop through asking for asking all the dice that the player wants
        % to keep
        while more=='y'
            keep(i) = dice_results(input('Which rolls do you want to keep?\n'));
            i=i+1;
            more = input('Do you want to keep anymore rolls?','s');
        end
        l = length(keep);
        for x = l:1:5
            keep(x) = randi([1,6]);
        end
        keep
        dice_results=keep;
    end
end

% Asks play what category to place the score into
scorecategory=input('What category do you want these points to count for?','s');

% Intialize the score for the round
roundscore = 0;

% Calculates the score for the intended category
if scorecategory == 'aces'
    roundscore = uppertotal(dice_results,1);
elseif scorecategory == 'twos'
    roundscore = uppertotal(dice_results,2);
elseif scorecategory == 'threes'
    roundscore = uppertotal(dice_results,3);
elseif scorecategory == 'fours'
    roundscore = uppertotal(dice_results,4);
elseif scorecategory == 'fives'
    roundscore = uppertotal(dice_results,5);
elseif scorecategory == 'sixes'
    roundscore = uppertotal(dice_results,6);
elseif scorecategory == '3 of a kind'
    if threeofkind(dice_results) == true
        for i = 1:1:length(dice_results)
            roundscore = roundscore + dice_results(i);
        end
    end
elseif scorecategory == '4 of a kind'
    if fourofkind(dice_results) == true
        for i = 1:1:length(dice_results)
            roundscore = roundscore + dice_results(i);
        end
    end
elseif scorecategory == 'small straight'
    if smallstraight(dice_results) == true
        roundscore = 30;
    end
elseif scorecategory == 'large straight'
    if largestraight(dice_results) == true
        roundscore = 40;
    end
elseif scorecategory == 'yahtzee'
    if yahtzeedetection(dice_results) == true
        roundscore = roundscore + 50;
    end
elseif scorecategory == 'chance'
    for i = 1:1:length(dice_results)
        roundscore = roundscore + dice_results(i);
    end
end

% Set the category used for output
category = scorecategory;
end

