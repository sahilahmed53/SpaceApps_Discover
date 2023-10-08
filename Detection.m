
 clc; close all; 


v2 = diff(VarName2);
v3 = diff(VarName3);
v4 = diff(VarName4);

month1 = 7*30+17;
month2 = 7*30+20;
t1 = month1*1440;
t2 = month2*1440;

t1 = 1;
t2 = length(VarName1);
a = VarName1(t1:t2);
b = VarName2(t1:t2);
c = VarName3(t1:t2);
d = VarName4(t1:t2);
e = VarName5(t1:t2);


figure;
plot(a,c)


figure;
plot(a,b)
hold on
plot(a,c)
plot(a,d)
legend('bx','by','bz')

% figure;
% plot(a(1:end-1),v2)
% hold on
% plot(a(1:end-1),v3)
% plot(a(1:end-1),v4)


i2=find(abs(v2)>5);
i3=find(abs(v3)>5);
i4=find(abs(v4)>5);

% i2=find(abs(b)>7);
% i3=find(abs(c)>10);
% i4=find(abs(d)>10);

a2 = a(i2);
b2 = b(i2);
figure;
stem(a2,b2);

a3 = a(i3);
b3 = c(i3);
figure;
stem(a3,b3);

a4 = a(i4);
b4 = d(i4);
figure;
stem(a4,b4);

[val,p] = intersect(a2,a3);
[val1,p1] = intersect(a4,a2);
[val3,p2] = intersect(val,val1);

cdata = corrcoef(dscfcsummedspectra2022v01);
h = heatmap(cdata);

% x1 = qqplot(VarName6);
% x2 = corrcoef(VarName6,VarName8);
% x3 = corrcoef(VarName6,VarName37);
% figure;
% plot(cdata())

x = VarName52+VarName53+VarName54;
figure;
plot(a,x);

i=find(x>0);
a0 = a(i);

x1 = VarName50+VarName51;
figure;
plot(a,x1);

i0=find(x1>0);
a01 = a(i0);




x2 = VarName42+VarName43+VarName44+VarName45+VarName46+VarName47+VarName48+VarName49;
figure;
plot(a,x2);

i1=find(x2>0);
a02 = a(i1);
figure;

v5 = VarName2+VarName3+VarName4;
plot(a,v5)
i5=find(abs(v5)<0.5);
a5 = a(i5);

dscfcsummedspectra2022v01(isnan(dscfcsummedspectra2022v01))=0;

B = movmean(dscfcsummedspectra2022v01,60*24*10,1);
figure;
plot(a,B(:,1))
hold on
plot(a,B(:,2))
% plot(a,B(:,3))

mu = 1;                                %// Mean
sigma = 12;                            %// Standard deviation

%// Plot curve
x = (-5 * sigma:0.01:5 * sigma) + mu;  %// Plotting range
plot(x, normpdf(x,mu,sigma));

i6=find(abs(B(:,1))>4);
a6 = a(i6);
f =abs(B(:,1));