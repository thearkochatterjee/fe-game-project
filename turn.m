function [roundscore] = turn(inputArg1,inputArg2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
more = 'y';
rollagain = 'y';
dice_results=randi([1,6],1,5)
while rollagain=='y'
    i=1;
    rollagain=input('Do you want to roll again');
    if rollagain=='y'
        while more=='y'
            keep(i) = dice_results(input('Which rolls do you want to keep?\n'));
            i=i+1;
            more = input('Do you want to keep anymore rolls?','s');
        end
        l = length(keep);
        for x = l:1:5
            keep(x) = randi([1,6]);
        end
        dice_results=keep;
    end
end
scorecategory=input('What category do you want these points to count for?','s');
roundscore = 0;
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
    
elseif scorecategory == 'large straight'
    
elseif scorecategory == 'yahtzee'
    if yahtzeedetection(dice_results) == true
        roundscore = roundscore + 50;
    end
elseif scorecategory == 'chance'
    for i = 1:1:length(dice_results)
        roundscore = roundscore + dice_results(i);
    end
end
end

