%Single layer perceptron for 2 - input or
clear all
close all
%inputs
in=[0 0; 0 1; 1 0; 1 1];
n= size(in,1);  % number of inputs
%display(n)
%desired outputs
de_out=[0;1;1;1];
b=-1;  %bias
c=0.1; %learning rate
%weights
w=-1+2.*rand(3,1);
%display(w)
a=10000; %no of iterations
for i=1:a
out=zeros(n,1);
%display(out)
for j=1:n
    y=b*w(1,1)+in(j,1)*w(2,1)+in(j,2)*w(3,1);
    out(j)=1/(1+exp(-y));   %sigmoid function
    %widrow-hoff delta rule - weight updating
    del=de_out(j)-out(j);   
    w(1,1) = w(1,1)+c*b*del;
    w(2,1) = w(2,1)+c*in(j,1)*del;
    w(3,1) = w(3,1)+c*in(j,2)*del;
end
end
display(out)
display(w)
 
