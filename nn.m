%Nearest neighbour classifier
clear all
close all
%generate random numbers(patterns)
a= ceil(rand(200,1)*50);
%display(a)
b= ceil(rand(200,1)*500);
%plotting values
plot(a,'r+'); 
hold on
plot(b,'b*');
hold on
%take input
x=input('X=');
y=input ('Y=');

s1=size(a,1);
s2=size(b,1);
%display(s1)
%for pattern a
for i=(1:1:s1)
 dist1=(a(i)-x)*(a(i)-x);
 dist2=(a(i)-y)*(a(i)-y);
 dist_a= dist1+dist2;
 euc_dis1=sqrt(dist_a);
 d1(i)=euc_dis1;
 %display(euc_dis)
end
closest1=min(d1);
%display(closest1)
%for pattern b
for i=(1:1:s2)
 dist3=(b(i)-x)*(b(i)-x);
 dist4=(b(i)-y)*(b(i)-y);
 dist_b= dist3+dist4;
 euc_dis2=sqrt(dist_b);
 d2(i)=euc_dis2;
 %display(euc_dis)
end
closest2=min(d2);

%discriminant function
dis_func= closest1-closest2;

if dis_func<0
    pattern=1;
else 
    pattern=2;
end
display(pattern)
if pattern==1
    plot(x,y,'g+')
    %hold on
else
    plot(x,y,'g*')
    %hold on
end
