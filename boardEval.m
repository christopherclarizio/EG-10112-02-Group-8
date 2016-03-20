% Board evaluator
% The higher the number that is returned, the better the game is for the
% computer 

function x=boardEval(Board,N)
sum=0;
for i=1:N
    for j=1:N
        switch Board(i,j)
            case 1
                sum=sum+1;
            case 2
                sum=sum-1;
            case 3
                sum=sum+1.5;
            case 4
                sum=sum-1.5;
        end
    end
end
x=sum;
boardEval.mOpen
1 of 2 items
boardEval.mfindMoves.mDisplaying boardEval.m.
