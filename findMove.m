% 2/23/16
% Group 8
% FindMoves.m
% Finds all random moves

function moves=findMoves(x,y,Board,N)
    moves={};
    for a=1:8
        for b=1:8
            if canMovePiece(N,Board,x,y,a,b)
                moves=[moves, [a,b]];
            end
        end
    end            
end
