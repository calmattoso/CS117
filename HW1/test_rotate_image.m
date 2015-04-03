im = im2double(rgb2gray(imread('crooked_horizon.jpg')));
im_rot_native = imrotate(im, 45);
im_rot_custom = rotate_image(im, 45);

figure(1); imshow(im); title('Original Image'); truesize;
figure(2); imshow(im_rot_native); title('imrotate.m result'); truesize;
figure(3); imshow(im_rot_custom); title('rotate image.m result'); truesize;