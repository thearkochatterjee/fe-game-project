clear;
clc;
numplayers = input('How many players are present?');
ai=input('Would you like to include the computer in this game (y - yes, n - no)','s');
if ai=='y'
    fprintf('with computer')
else
    dice_results=randi([1,6],1,5)
    more = 'y';
    i=1;
    keep=[];
    while more=='y'
        keep(i) = dice_results(input('What number dice would you like to keep?'));
        i=i+1;
        more = input('Are there any other dice that you would like to keep?','s');
    end
    keep
    for i = length(keep):1:5
       keep(i)=randi([1,6]);
    end
    keep
end