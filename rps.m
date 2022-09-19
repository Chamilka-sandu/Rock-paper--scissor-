

n = 1; 
playerwin = 0; 
computerwin = 0;


while (y < 4)
    fprintf('\nLet us play the Game #%d \n', n);
    y = y+1; 
    pause(0.5);
    o = 1; 
    while o == 1
        close all; 
        
        player_move = questdlg
        switch player_move
            case 'Rock' 
                pl_img = imread('R1.jpg');
                subplot(121); imshow(pl_img);
                title('Player chose Rock');
                o=0;
            case 'Paper' 
                pl_img = imread('P1.jpg');
                subplot(121); imshow(pl_img);
                title('Player chose Paper');
                o=0;
            case 'Scissor'
                pl_img = imread('S1.jpg');
                subplot(121); imshow(pl_img);
                title('Player chose Scissors');
                o=0;
            otherwise %
                disp('Invalid selection. Choose properly!');
        end
    end
    pause(0.5);
    pause on;
    computer_move = randi(3); 
    if computer_move == 1
        co_img = imread('R2.jpg');
        subplot(122); imshow(co_img);
        title('Computer chose Rock')
    elseif computer_move == 2
        co_img = imread('P2.jpg');
        subplot(122); imshow(co_img);
        title('Computer chose Paper')
    elseif computer_move == 3
        co_img = imread('S2.jpg');
        subplot(122); imshow(co_img);
        title('Computer chose Scissors')
    end
    pause(0.5);
    
    if strcmp(player_move,'Rock') && computer_move == 3
        fprintf('Kudos. You Won!\n');
        playerwin = playerwin + 1;
        h = msgbox('You win','Success','custom',pl_img);
      
    elseif computer_move == 1 && strcmp(player_move,'Scissor')
        fprintf('Oops. You Lost :(\n');
        computerwin = computerwin + 1;
        h = msgbox('Computer wins','Loss','custom',co_img);
        
      
    elseif strcmp(player_move,'Scissor') && computer_move == 2
        fprintf('Kudos. You Won!\n');
        playerwin = playerwin + 1;
        h = msgbox('You win','Success','custom',pl_img);
        
      
    elseif computer_move == 3 && strcmp(player_move,'Paper')
        fprintf('Oops. You Lost :(\n');
        computerwin = computer_in + 1;
        h = msgbox('Computer wins','Loss','custom',co_img);
       
    elseif strcmp(player_move,'Paper') && computer_move == 1
        fprintf('Kudos. You Won!\n');
        playerwin = playerwin + 1;
        h = msgbox('You win','Success','custom',pl_img);
        
     
    elseif computer_move == 2 && strcmp(player_move,'Rock')
        fprintf('Oops. You Lost :(\n');
        computerwin = computerwin + 1;
        h = msgbox('Computer wins','Loss','custom',co_img);
    
        
    else
        fprintf('The Game is draw!\n')
        h = msgbox('The Game is Draw','Draw');
        y = y-1; 
    end
    pause(2.5); 
    delete(h);
end

if player_win > computer_win
    fprintf('\n\n\nYou are our ultimate winner.\n\n\n');
else
    fprintf('\n\n\nYou lost the game against computer.\n\n\n');
end
