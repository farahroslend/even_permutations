
global x1 store1 

for x1=1:X/2
   
    y=(x1)*2 + (x2)*2 + (x3)*2;
    
    j=x1 + i*(X/2) + h*(X/2);
        
    store1(j,:)=[ x1 x2 x3 y]; %the second loop for x2=2 replaces the second row element and proceeds iteration until the 15th loop element
    
end