% x1=1:15;
% x2=1:15;
% x3=1:15;

%combinations for x1 and x2 only

close all
clc
clear all
% 
% x2=1;
x3=1; 

% for x3=1:15
%     
% for x2=1:15

for x2=0:15
    
for x1=1:15
   
    y=(x1)*2 + (x2)*2 + (x3)*2;
    
    j=x1 + x2 ; %j=x1 + x2 -1 + x3 -1 ;
    
    store(j,:)=[ x1 x2 x3 ];
            
end

end


% x2=x2+1;
% 
% end
%   
% x3=x3+1;
% 
% end

%   if y=30
        
    
    
    
    
    
    