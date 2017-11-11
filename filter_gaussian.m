%Remove noise with Gaussian filter

%% Load an image
img=imread('saturn.png');
imshow(img);

%% Add some noise
noise_sigma=25;
noise=randn(size(img)).*noise_sigma;
noisy_img=img+noise;
imshow(noisy_img);

%% Create a Gaussian filter
filter_size=11;
filter_sigma=2;
pkg load image;
filter=fspecial('gaussian',filter_size,filter_sigma);

%% Apply it to remove noise
smoothed=imfilter(noisy_img,filter);
