function [result] = turn()
%turn plays the players turn for a round and returns the score that they
%achieved

% Intialize variables for operation of the game
rollagain = 'y';
rollcount = 1;
load('Dice.mat');

% Intial roll results
dice_results = randi([1,6],1,5);
imshow([Dice{dice_results}]);

% Loop until the player does not want to roll again
while rollagain=='y' && rollcount < 4

    % Ask if the player wants to roll again
    rollagain=input('Do you want to roll again?\n','s');
    if rollagain=='y'
        rollcount = rollcount + 1;
        % Loop through asking for asking all the dice that the player wants
        % to keep
        keep = dice_results;
        while 1
            ridof = input('Which dice do you want to roll again? (enter 0 to exit)\n');
            if ridof == 0
                break;
            elseif ridof == 1 || ridof == 2 || ridof == 3 || ridof == 4 || ridof == 5
                keep(ridof) = 0;
            else
                fprintf('Please use a valid input for which dice you want to roll again?\n');
            end
        end
        for y = 1:1:length(keep)
            if keep(y) == 0
                keep(y) = randi([1,6]);
            end
        end
        dice_results=keep;
        close all;
        imshow([Dice{dice_results}]);
    end
end

result = dice_results;
end

