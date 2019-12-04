%¼ÆËãĞ­·½²î¾ØÕó
load Pondsdata
x1 = data(:,1);
x2 = data(:,2);
x3 = data(:,3);
x4 = data(:,4);
x5 = data(:,5);
x = [x2 x3 x4 x5];
cov12 = sum((x2-mean(x2)).*(x3-mean(x3)))/(size(x,1)-1);
cov13 = sum((x2-mean(x2)).*(x4-mean(x4)))/(size(x,1)-1);
cov14 = sum((x2-mean(x2)).*(x5-mean(x5)))/(size(x,1)-1);
cov23 = sum((x4-mean(x4)).*(x3-mean(x3)))/(size(x,1)-1);
cov24 = sum((x5-mean(x5)).*(x3-mean(x3)))/(size(x,1)-1);
cov34 = sum((x4-mean(x4)).*(x5-mean(x5)))/(size(x,1)-1);
var1 = std(x2)^2;
var2 = std(x3)^2;
var3 = std(x4)^2;
var4 = std(x5)^2;
