% Explore edge options
pkg load image;

%% Load an image
img = imread('fall-leaves.png');  % also available: peppers.png, mandrill.png
imshow(img);

%% TODO: Create a Gaussian filter
filter_size=11;
filter_sigma=2;

filter=fspecial('gaussian',filter_size,filter_sigma);

%% TODO: Apply it, specifying an edge parameter (try different parameters)
smoothed=imfilter(img,filter,0);
imshow(smoothed);

smoothed=imfilter(img,filter,'replicate');
imshow(smoothed);

smoothed=imfilter(img,filter,'circular');
imshow(smoothed);

smoothed=imfilter(img,filter,'symmetric');
imshow(smoothed);