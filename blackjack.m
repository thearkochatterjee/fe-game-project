clc
clear
close all
warning('off');
fprintf('\nWelcome to the game of Blackjack! Let''s begin!\n');

%load card deck and assign deck values
load CardDeck
figure('WindowStyle','docked')
%imshow([RedDeck{1:52}]);
DeckValue = [11 2:10 10 10 10 11 2:10 10 10 10 11 2:10 10 10 10 11 2:10 10 10 10];

Userans = input('Would you like to play. Enter 1 if yes');
while Userans == 1
    %shuffling the deck and dealing cards to the player and dealer
    shuffledDeck = randperm(52); %Random permutation of numbers 1 to 52
    userhand= shuffledDeck(1:2);
    cpuhand= shuffledDeck(3:4);
    shuffledDeck2 = shuffledDeck(5:52);
    figure(1);
    subplot(1,2,1), imshow([RedDeck{userhand}]) 
    subplot(1,2,2), imshow([RedDeck{cpuhand(1)}, RedDeck{(55)}])
    uservalue = sum(DeckValue(userhand));
    dealervalue = sum(DeckValue(cpuhand(1)));
    i = 0;
    if(uservalue > 21)
        uservalue = sum(DeckValue(userhand)) -10;
    end
        
    fprintf('You currently have %.0f points in your hand and the dealer has %.0f points.\n',uservalue, dealervalue);
    if(uservalue == 21)
        fprintf('CONGRATULATIONS! You have won the game!');
    else
        decision=input('Would you like to hit or stand? If hit enter "1". If stand enter "2".\n');
    end
    while decision ~= 2 && decision ~= 0
        i = i+1;
        userhand = ([userhand shuffledDeck2(i)]);
        uservalue = sum(DeckValue(userhand));
        if uservalue > 21
            for k = 1:length(userhand)
                if DeckValue(userhand(k)) == 11
                    uservalue = sum(DeckValue(userhand)) - 10;
                end
                if uservalue <= 21
                    break;
                end
            end
        end
        subplot(1,2,1), imshow([RedDeck{userhand}]) 
        subplot(1,2,2), imshow([RedDeck{cpuhand(1)}, RedDeck{(55)}])
        if uservalue == 21
            decision = 0;
            fprintf('CONGRATULATIONS! You have won the game!');
        elseif uservalue > 21
            fprintf('Sorry you lost!');
            decision = 0;
        else
            fprintf('You currently have %.0f points in your hand and the dealer has %.0f points.\n',uservalue, dealervalue);
            decision=input('Would you like to hit or stand? If hit enter "1". If stand enter "2".\n');
        end
    end
    if decision ~=0
        subplot(1,2,1), imshow([RedDeck{userhand}]) 
        subplot(1,2,2), imshow([RedDeck{cpuhand}])
        dealervalue = sum(DeckValue(cpuhand));
        while dealervalue <= uservalue && uservalue <=21 && decision ~= 0
            i = i+1;
            cpuhand = ([cpuhand shuffledDeck2(i)]);
            dealervalue = sum(DeckValue(cpuhand));
            if dealervalue > 21
                for k = 1:length(cpuhand)
                    if DeckValue(cpuhand(k)) == 11
                        dealervalue = sum(DeckValue(cpuhand)) - 10 ;
                    end
                    if dealervalue <= 21
                        break;
                    end
                end
            end
            subplot(1,2,1), imshow([RedDeck{userhand}]) 
            subplot(1,2,2), imshow([RedDeck{cpuhand}])
            if dealervalue > 21
                decision = 0;
                fprintf("Dealer lost! ");
            end
        end
        if dealervalue == uservalue
            fprintf("Its a tie");
        elseif dealervalue <= 21 && dealervalue > uservalue
            fprintf("You lost.");
        else
            fprintf("You won!");
        end
    end
    Userans = input('\nWould you like to continue playing. Enter 1 if yes');
end