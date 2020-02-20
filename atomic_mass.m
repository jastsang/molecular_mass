%loop with quit
%start a loop that continues until we issue a break command
hydrogen=0;
carbon=0;
nitrogen=0;
oxygen=0;

mass_hydrogen=1.0079;
mass_carbon=12.0107;
mass_nitrogen=14.0067;
mass_oxygen=15.9990;

score = 0;

while true
    fprintf(strcat('\nmolecular formula score ', num2str(score)));
    element=input('Give me a letter [use caps,Q to quit]:','s');
    %test for user option
    if(element=='Q')%Q chosen as it is not a valid atom type
        %break here to quit
        break
    elseif(element=='E')
        %reset the score
        score=0
        %restart the loop
        continue
    end %end of loop- go back to start but you can do something based on input here

    number=input('Please enter element'); %check for silly input
    if (number<1)
        disp('ERROR: The atomic number must be at least 1');
        continue
    end

    switch element
        case'H'
          atomic_number=1;
        case 'C'
          atomic_number=12;
        case 'N'
          atomic_number=14;
        case 'O'
          atomic_number=16;
        otherwise
            disp('I did not understand that element');
            continue;
    end %did the user get it right?
    if(number==atomic_number)
        score=score+1;
        disp('correct- well done');
    else
        disp('sorry incorrect- better luck next time');
    end

end
%flow reaches here when we select Q to quit due to break command
disp('goodbye');
