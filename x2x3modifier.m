close all
clc
clear all

%% 

% Prompt for X

global X

disp('WHAT ARE THE THREE EVEN NUMBERS BETWEEN 2 TO X THAT WHEN ARE SUMMED GIVES TO X? GIVEN X IS AN EVEN NUMBER. ') 

prompt= 'Value of X = ';
X=input(prompt);

disp('............................................................');

%%

% Calculations

global x2 x3 i h
i=0;
h=0;



for x3=1:X/2

for x2=1:X/2
    
    loopx1
    
    i=i+1;
    
end

h=h+1;

end

%%

% Filtering for answers

store1withtargetsum= store1==X;

[row,col,v] = find(store1withtargetsum); %find the row, column numbers, the value of the element for nonzero elements in store2

[m,n]=size(row); %matrix size [row, column]

% rowfinal=row(m,1); %value of element in the final row of the 'row' matrix



for k=1:m 
    
    store1strip=store1( row(k,1) ,1:3);
    
    store1filtered1(k,:)= [ store1strip ];
    
end
        
%preliminary answer (permutation)
store1filtered1; 

%%

%Answers

%%

%ANSWERS (combinations), with repeated even numbers allowed

% c = combnk(store1filtered1(:,1:3),'rows');

store1filtered1=sort(store1filtered1, 2); 

[withrepetition,ia] = unique(store1filtered1(:,1:3),'rows');

withrepetition=2*withrepetition;



disp('number of solution (s)');

drow=size(withrepetition);
with_repeated_numbers=drow(1,1)

withrepetition

%%

%ANSWERS (combinations), with repeated even numbers NOT allowed

col1=withrepetition(:,1);
col2=withrepetition(:,2);
col3=withrepetition(:,3);

leftminus= col1- col2;
rightminus= col2 - col3;

col4=leftminus<0;
col5=rightminus<0;

col6=col4+col5;

columns=[ col1 , col2 , col3, col4, col5, col6 ];

col7=col6>1; %marks 1 for rows with elements 2; for when no repetition of a number occurs in the row

columns=[ col1 , col2 , col3, col4, col5, col7 ];

[rowcol7,colcol7,vcol7] = find(col7); %find the row, column numbers, the value of the element for nonzero elements in col7

[mcol7,ncol7]=size(rowcol7); %matrix size [row, column]

for g=1:mcol7
    
    norepetition(g,:)=[ columns( rowcol7(g,1) ,1:3) ];

end

disp('............................................................');

disp('number of solution (s)');

drow2=size(norepetition);
no_repeated_numbers=drow2(1,1)

norepetition


%%

%problem: the second loop for x2 won't reiterate the x2 for each value of
%x1 changed in the first loop SOLVED

%problem with indexing the row number for concatenating matrix when x2 is
%then changed SOLVED

%problem morphing of x1,2,3 into 0 after when each x3 changes value SOLVED

%note: there are X/2 rows of 0 in store1 which reoccurs everytime x3 changes value  
