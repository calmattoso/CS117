% STRAIGHTEN.m Straighten an image horizontally
%
% Loads in an image and allows the user to click on two points on the 
%   image, which is then rotated so that the line connecting these two
%   points becomes horizontal.
%

% Load the image and convert it to grayscale
im = im2double(rgb2gray(imread('crooked_horizon.jpg')));
figure(1); imshow(im); truesize; title('Original image');

% have the user select to points on the image. The first point is the one
% on which the rotation angle will be defined.
[x,y] = ginput(2);

% get the rotation angle for the original image
angle_orig = get_rotation_angle(x(1),y(1),x(2),y(2));

% Let's also test on a mirrored image, to test for other angle orientations
im_mirror = flip(im,2);
figure(2); imshow(im_mirror); truesize; title('Original mirror image');
[x,y] = ginput(2);

% get the rotation angle for the mirrored image
angle_mirror = get_rotation_angle(x(1),y(1),x(2),y(2));

% rotate both the original and mirrored images
im_rot = rotate_image(im, angle_orig);
figure(3); imshow(im_rot); truesize; title('Straightened image');

im_mirror_rot = rotate_image(im_mirror, angle_mirror);
figure(4); imshow(im_mirror_rot); truesize; title('Straightened mirror image');


   