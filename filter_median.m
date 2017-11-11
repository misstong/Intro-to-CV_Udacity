% Apply a Median filter
pkg load image;

%% Read an image
img=imread('moon.png');
imshow(img);

%% Add salt & pepper noise
noisy_img=imnoise(img,'salt & pepper');
imshow(noisy_img);

%% Apply a median filter
median_filtered=medfilt2(noisy_img);