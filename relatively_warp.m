%   感谢亲亲使用此代码，此代码解决您的问题了吗~(@^_^@)~
%   没解决的话告诉亲亲一个好消息，我这里可以1分钱帮助代码改错，还提供1分钱成品代码(′▽`〃)哦~
%   登录淘宝店铺“大成软件工作室”便可领取
%   是的，亲亲真的没有看错，挠破头皮的问题真的1分钱就可以解决了\(^o^)/YES!
%   小的这就把传送门给您，记得要收藏好哦(づ￣3￣)づ╭～
%   传送门：https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-15151018122.5.uwGoq5&id=538759553146
%   如果传送门失效，亲亲可以来店铺讨要，客服MM等亲亲来骚扰哦~(*/ω╲*)
%求两图像的相对标准差
function f=relatively_warp(h1,h2)
%DREL return relatively warp(相对标准差)       求两图像的相对标准差
%input must be a imagehandle                  输入图像句柄
%image fusion evaluate parameter              图像融合评价参数
%    example
%      标准图像   h1
%      融合后图像 h2
%      f=DREL(h1，h2);
%相对标准差越小，就表示图像融合的效果越好
s=size(size(h1));%判断是灰度图还是RGB
if s(2)==3;
f1=rgb2gray(h1);
f2=rgb2gray(h2);
else
    f1=h1;
    f2=h2;
end 
G1=double(f1);
G2=double(f2);
[m1,n1]=size(G1);
[m2,n2]=size(G2);
u1=(sum(G1(:)))/(m1*n1);
u2=(sum(G2(:)))/(m2*n2);
c1=0;
c2=0;
for i=1:m1
    for j=1:n1
        w1=G1(i,j)-u1;
        w2=G2(i,j)-u2;
        c1=c1+w1^2;
        c2=c2+w2^2;
    end
end
f1=sqrt(c1/(m1*n1));
f2=sqrt(c2/(m2*n2));
f=(f1-f2)/f1;