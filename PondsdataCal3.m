
figure,scatter3(xk1,xk2,Y,'filled')
hold on
xk1step = (max(xk1)-min(xk1))/30;
xk2step = (max(xk2)-min(xk2))/30;
xk1fit = min(xk1):xk1step:max(xk1);
xk2fit = min(xk2):xk2step:max(xk2);
[XK1FIT,XK2FIT] = meshgrid(xk1fit,xk2fit);
YFIT = re(1) + re(2)*XK1FIT.^2 + re(3)*XK2FIT.^2 + re(4)*XK1FIT + re(5)*XK2FIT + re(6)*XK1FIT.*XK2FIT;
%YFIT = 0.3866*XK1FIT + 1.6548*XK2FIT;
re
mesh(XK1FIT,XK2FIT,YFIT)
xlabel('Major 1')
ylabel('Major 2')
zlabel('Profit')
view(50,10);
hold off