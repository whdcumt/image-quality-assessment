这是从网上整理出来的图像融合评价标准，总共有13项性能指标。包括平均梯度，边缘强度，信息熵，灰度均值，标准差(均方差MSE)，均方根误差，峰值信噪比（psnr），空间频率(sf)，图像清晰度，互信息(mi)，结构相似性(ssim)，交叉熵(cross entropy)，相对标准差。<br>
这些有从网上找的，有是自己写的，可能也有错误，大叫交流吧
data.M1,data.M2分别为融合前的两个图像，data.F为融合后的图像

    avg=num2str(avg_gradient(data.F));%平均梯度
    ein=num2str(edge_intensity(data.F));%边缘强度
    sha=num2str(shannon(data.F));%信息熵
    [img_mean,img_var]=variance(data.F);%灰度均值，标准差(均方差MSE)
    gray_mean=num2str(img_mean);
    vari=num2str(img_var);
    rms=num2str(rmse(data.F,data.M1));%均方根误差
    psnrvalue=num2str(psnr(data.M1,data.F));%峰值信噪比
    sf=num2str(space_frequency(data.F));%空间频率
    fd=num2str(figure_definition(data.F));%图像清晰度
    mi1=mutinf(data.M1,data.F);%互信息
    mi2=mutinf(data.M2,data.F);
    mi=num2str(mi1+mi2);
    [mssim, ssim_map] = ssim(data.M1,data.F);%结构相似性
    ssi=num2str(mssim);
    cross_entro=num2str(cross_entropy(data.M1,data.M2));%交叉熵，应该使用标准图像&融合后图像
    rw=num2str(relatively_warp(data.M1,data.F));%相对标准差，应该使用标准图像&融合后图像



自己主要需要：平均梯度，边缘梯度，信号熵，灰度均值和标准差（均方差MSE）和图片的清晰度<br>
其中平均梯度和边缘梯度，信号熵是对于彩色图像<br>
灰度均值和标准差（均方误差MSE），图像清晰对于灰度图像<br>

 
    imag=imread('E:\InputName.bmp');
    avg=num2str(avg_gradient(imag))
    ein=num2str(edge_intensity(imag))
	sha=num2str(shannon(imag))
	x=rgb2gray(imag);
	[img_mean,img_var]=variance(x)
	fd=num2str(figure_definition(x))

已测试/效果见test文件夹/测试时间2016.10.3<br>
测试图片：InputName.bmp<br>
测试结果：效果.png<br>
说明：已备份Github2016.10.3<br>

