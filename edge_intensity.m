%   感谢亲亲使用此代码，此代码解决您的问题了吗~(@^_^@)~
%   没解决的话告诉亲亲一个好消息，我这里可以1分钱帮助代码改错，还提供1分钱成品代码(′▽`〃)哦~
%   登录淘宝店铺“大成软件工作室”便可领取
%   是的，亲亲真的没有看错，挠破头皮的问题真的1分钱就可以解决了\(^o^)/YES!
%   小的这就把传送门给您，记得要收藏好哦(づ￣3￣)づ╭～
%   传送门：https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-15151018122.5.uwGoq5&id=538759553146
%   如果传送门失效，亲亲可以来店铺讨要，客服MM等亲亲来骚扰哦~(*/ω╲*)
function outval = edge_intensity(img) 
% OUTVAL = EDGE_INTENSITY(IMG) 
 
if nargin == 1 
    img = double(img); 
    % Create horizontal sobel matrix 
    w = fspecial('sobel'); 
     
    % Get the size of img 
    [r c k] = size(img); 
     
    gx = imfilter(img,w,'replicate'); 
    gy = imfilter(img,w','replicate'); 
     
    for m = 1 : r 
        for n = 1 : c 
            for q = 1 : k 
                g(m,n,q) = sqrt(gx(m,n,q)*gx(m,n,q) + gy(m,n,q)*gy(m,n,q)); 
            end 
        end 
    end 
    outval = mean(mean(mean(g))); 
else 
    error('Wrong number of input!'); 
end 