% Christopher Clarizio
% 2/10/2016

% Simulate Chuckaluck betting always on the same number the same amount
% Track the number of turns played
% Track the "stash"
% The stash(k) is the remaining $ before the kth turn

% for example
% stash: 200 195 190....
% turn:  1   2   3...

clear
clf
clc

%% Set Vars

P = 1/6; % praobablity of winning for any number
numMatches = 0; %the number of dice that match the number the player is betting on
stash(1) = 100; %array to keep track of amount of money, starts with 100$
bet = 5; %bet per spin
turn(1) = 1; %array to keep track of turns, starts with 1 turn
nturn = 1; %counter var for number of turns

%% Simulate

while stash(nturn) >= bet;
    
    nturn = nturn + 1;
    turn(nturn) = nturn;
    r1 = rand; %simulates 1st dice
    r2 = rand; %simulates 2nd dice
    r3 = rand; %simulates 3rd dice
    if (r1 < P && r2 < P && r3 < P) %if all the match then returns 3*bet
        stash(nturn) = stash(nturn-1) + 3*bet;
    elseif ( (r1 < P && r2 < P) || (r2 < P && r3 < P) || (r1 < P && r3 < P) ) %if two match then returns 2*bet
        stash(nturn) = stash(nturn-1) + 2*bet;
    elseif (r1 < P || r2 < P || r3 < P) %if one matches then returns bet
        stash(nturn) = stash(nturn-1) + bet;
    else %if none match takes away bet
        stash(nturn) = stash(nturn-1) - bet;
        disp('0');
    end
    
end

%% Disp Result

for i = 1 : nturn
    plot(turn(1:i),stash(1:i),'k-',turn(i),stash(i),'ko'); %plots winnings/losses vs turns
    line([0 i],[stash(1) stash(1)],'Color','r');
    drawnow;
end
disp(strcat('You ran out of money after ',num2str(nturn),' turns'));



