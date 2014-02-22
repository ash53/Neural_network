% Genetic Algorithm 
clc
clear all
close all
popsize=4;
nbits=4;
pop=round(rand(popsize,nbits)); %generate population (encoding)
display(pop)
x=bi2de(pop); %converting from binary to decimal(decoding)
display(x)
y=x.^2; %calculate f(x)
display(y)
%counting probability
s=sum(y);
display(s)
cu=0;
for i=1:popsize
    p(i)=y(i)/s;
    cu=cu+p(i); %cumulative probability
    cu_p(i)= cu;
    ec(i)=p(i)*popsize; %expectation count
end
display(p)
display(cu_p)
display(ec)
rn_a=rand(popsize);
for i=1:popsize
    a(i)=rn_a(i,1); %first row of random no. array
end
display(a)
fprintf('Population\tCount\n');
for i=1:popsize
    ex(i)=round(ec(i));%expected count genarated by rounding off ec
    fprintf('%d\t\t\t%d\n',i,ex(i));
end 
for i=1:popsize
    for j=1:popsize
        if(cu_p(j)>=a(i))
            b(i)=j;
            break;
        end
    end
end
fprintf('Round\tSelected Population\n');
for i=1:popsize
    fprintf('%d\t\t\t%d\n',i,b(i));
end
for i=1:popsize
    f(i)=0;
end
for i=1:popsize
    f(b(i))=f(b(i))+1;
end

fprintf('Population no\tFrequency\n');
for i=1:popsize
    fprintf('%d\t\t\t\t\t%d\n',i,f(i));
end







