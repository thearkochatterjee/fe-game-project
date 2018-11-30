clear;
clc;
warning('off');
% Game based on rolling 5 dice and trying to achieve the highest score

% Breif Discription over how the categories will be scored
fprintf('Scoring category overview:\n\n');
fprintf('Aces - Adds the total for all the ones rolled\n\n');
fprintf('Twos - Add the total for all the twos rolled\n\n');
fprintf('Threes - Adds the total for all the threes rolled\n\n');
fprintf('Fours - Adds the total for all the fours rolled\n\n');
fprintf('Fives - Adds the total for all the fives rolled\n\n');
fprintf('Sixes - Addes the total for all the sixes rolled\n\n');
fprintf('Three of a kind - if three of the same dice value are rolled then\nall the dice present will be totalled and added to the score\n\n');
fprintf('Four of a kind - if four of the same dice value are rolled then all\nthe dice present will be totalled and added to the score\n\n');
fprintf('Small Straight - if four of the five dice are consecutive then 30\npoints will be added to the score\n\n');
fprintf('Large Straight - if all five dice are consecutive then 40 points will\nbe added to the score\n\n');
fprintf('Fullhouse - if there are two different dice values present with\nthree of the dice being for one value and the other two for another value then 25 points can be\nadded to the score\n\n');
fprintf('Yahtzee - if all five dice are of the same value then 50 points\ncan be added to the score\n\n');
fprintf('Chance - the total value for all the dice rolled is added to the score\n\n');
fprintf('If more guidiance is required please press "Ctrl" + "C" and refer to the <a href="https://u.osu.edu/fe1181au18sec23590c/software-documentation/user-manual/">User Manual</a> for help.\n');
fprintf('Press any key to continue\n');
pause()
clc

% Asks how many players are playing
numplayers = input('How many players are present?');

% Intialize scores for all the players
for p = 1:1:numplayers %+ ai
    score(p) = 0;
    for x = 1:1:13
        categoriesused(p,x) = 0;
    end
end

for x = 1:1:13
    for p = 1:1:numplayers
        % Declares who's turn it is to play and proforms their turn
        fprintf('It is player %.0f turn!\n',p);
        result = turn();
        
        % Asks play what category to place the score into
        clc;
        fprintf('1 - Aces\n');
        fprintf('2 - Twoes\n');
        fprintf('3 - Threes\n');
        fprintf('4 - Fours\n');
        fprintf('5 - Fives\n');
        fprintf('6 - Sixes\n');
        fprintf('7 - Three of a kind\n');
        fprintf('8 - Four of a kind\n');
        fprintf('9 - Small Straight (30 points)\n');
        fprintf('10 - Large Straight (40 points)\n');
        fprintf('11 - Fullhouse (25 points)\n');
        fprintf('12 - Yahtzee (50 points)\n');
        fprintf('13 - Chance\n');
        fprintf('Your score so far is %.0f\n',score(p));
        
        % Loops until avaliable category has been selected
        while 1
            category=input('What category do you want these points to count for (type in category number you want to use)?\n');
            
            % Checks to make sure that the category has not been used
            if isinhand(categoriesused, category) == false && category < 14 && category >0
                categoriesused(p,category) = category;
                break;
            else
                fprintf('You have already used this category! (type in a different number)\n');
            end
        end
        
        % Intialize the score for the round
        roundscore = 0;
        % Calculates the score for the intended category
        if category == 1
            roundscore = uppertotal(result,1);
        elseif category == 2
            roundscore = uppertotal(result,2);
        elseif category == 3
            roundscore = uppertotal(result,3);
        elseif category == 4
            roundscore = uppertotal(result,4);
        elseif category == 5
            roundscore = uppertotal(result,5);
        elseif category == 6
            roundscore = uppertotal(result,6);
        elseif category == 7
            if threeofkind(result) == true
                for i = 1:1:length(result)
                    roundscore = roundscore + result(i);
                end
            end
        elseif category == 8
            if fourofkind(result) == true
                for i = 1:1:length(result)
                    roundscore = roundscore + result(i);
                end
            end
        elseif category == 9
            if smallstraight(result) == true
                roundscore = 30;
            end
        elseif category == 10
            if largestraight(result) == true
                roundscore = 40;
            end
        elseif category == 11
            if fullhouse(result) == true
                roundscore = 25;
            end
        elseif category == 12
            if yahtzeedetection(result) == true
                roundscore = roundscore + 50;
            end
        elseif category == 13
            for i = 1:1:length(result)
                roundscore = roundscore + result(i);
            end
        end
        score(p) = score(p) + roundscore;
        fprintf('Your score is %.0f\n',score(p));
    end
end

% Finding out which player has the highest score
highscore = 0;
poshigh = 0;
for p = 1:1:length(score)
    if score(p) > highscore
        highscore = score(p);
        poshigh = p;
    end
end

%Declare winner of the game
fprintf('The winner is player %.0f with a score of %.0f!\n', poshigh, highscore);