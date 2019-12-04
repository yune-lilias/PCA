result = cov(x); 
Cov_matrix = result
syms s;
l = double(solve(det(result-s*eye(4)),s));
feature_value = l;
suml = l(1)+l(2)+l(3)+l(4);
lpercent = [l(1)/suml l(2)/suml l(3)/suml l(4)/suml];  %explain percentage of each Principal component
Contribution = lpercent %output
numofmain = 1;
sum = lpercent(1);
z = 2;
while 1
    sum = sum + lpercent(z);
    if(sum>=0.95)
        numofmain = z;  %find how many Principal component can explain 95% of the data
        num_of_PC = z;   %output
        break;
    end
    z = z+1;
end

[k1,k2]=eig(result); 
major1 = k1(:,4); %主成分1对应单位特征向量（计算用）
major2 = k1(:,3); %主成分2对应单位特征向量（计算用）
xk1 = x*major1;
xk2 = x*major2;
feature_vector1 = major1  %输出用
feature_vector2 = major2  %输出用
X = [ones(size(xk1)) xk1.^2 xk2.^2 xk1 xk2 xk1.*xk2]; %线性回归
%X = [ones(size(xk1)) xk1 xk2];
Y = x1;
[re,bint1,r1,rint1,stats1]  = regress(Y,X);