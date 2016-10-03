%   感谢亲亲使用此代码，此代码解决您的问题了吗~(@^_^@)~
%   没解决的话告诉亲亲一个好消息，我这里可以1分钱帮助代码改错，还提供1分钱成品代码(′▽`〃)哦~
%   登录淘宝店铺“大成软件工作室”便可领取
%   是的，亲亲真的没有看错，挠破头皮的问题真的1分钱就可以解决了\(^o^)/YES!
%   小的这就把传送门给您，记得要收藏好哦(づ￣3￣)づ╭～
%   传送门：https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-15151018122.5.uwGoq5&id=538759553146
%   如果传送门失效，亲亲可以来店铺讨要，客服MM等亲亲来骚扰哦~(*/ω╲*)
function S = shannon(img) 


I=img;
%I=double(I);
[C,R]=size(I);      %求图像的规格
Img_size=C*R;       %图像像素点的总个数
L=256;              %图像的灰度级
H_img=0;
nk=zeros(L,1);
for i=1:C
    for j=1:R
        Img_level=I(i,j)+1;                 %获取图像的灰度级           
        nk(Img_level)=nk(Img_level)+1;      %统计每个灰度级像素的点数
    end
end
for k=1:L
    Ps(k)=nk(k)/Img_size;                  %计算每一个灰度级像素点所占的概率
    if Ps(k)~=0;                           %去掉概率为0的像素点
    H_img=-Ps(k)*log2(Ps(k))+H_img;        %求熵值的公式
    S=H_img;
    end
end
