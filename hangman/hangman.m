clear
clc

fprintf("Welcome to HANGMAN!");

ans = input("\nEnter yes to continue", 's');
words =  "apple"; %load("dictionary.txt");
randVal = randperm(1:length(words));
while ans == "yes"
    guessWord = words(randVal);
    numGuess = 8;
    displayWord = (1:length(guessWord));
    for i= 1:1:length(guessWord)
        displayWord(i) = guessWord(i);
    end
    output = "";
    while numGuess >= 8
        fprintf("\nYou have %3.0f guess left", numGuess);
        for i =1:1:length(guessWord)
            if(char(displayWord, i).)
                output = output + '___';
            else
                output = output + displayWord(i);
            end
        end
        letter = input("Enter a letter: ", s);
        for i = 1:1:length(guessWord)
            if guessWord(i) == letter;
                displayWord(i)  = letter;
            end
        end
        numGuess = numGuess -1;
    end
end
