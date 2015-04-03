function Irot = rotate_image(I,angle)
 % function Irot = rotate_image(I,angle)
 % 
 %   This function takes an image I and creates a new version of the image
 %   which is rotated by amount angle
 %
 % arguments:
 %
 %   I - the original grayscale image, stored as a matrix
 %   angle - the amount by which to rotate the image
 %
 % return value:
 %   
 %   Irot - an image which containing the rotated original
 %
 
 % generate x and y coordinates relative to the center of the image
 [height, width] = size(I);
 x_range = coords_rel_center(width);
 y_range = coords_rel_center(height);
 
 % get pixel coordinates for the image
 [x_coord,y_coord] = meshgrid(x_range,y_range);
 
 % reshape, in row order, the image I, xcoord and ycoord so they are row 
 % vectors. Row bind the last two in a new matrix and rotate them by 
 % angle degrees.
 I_row = I(:)';
 X_rot = rotate([x_coord(:) y_coord(:)]', -angle);
 
 % find the minimum and maximum x and y coordinates of Xrot to get the
 % dimensions of the new rotated image
 min_coords = round(min(X_rot'));
 max_coords = round(max(X_rot'));
 min_x = min_coords(1); min_y = min_coords(2);
 max_x = max_coords(1); max_y = max_coords(2); 
 
 % generate the coordinates for the new rotated image
 [new_x_coord, new_y_coord] = meshgrid(min_x:max_x, min_y:max_y);
 
 % create the rotated image
 Irot = griddata(X_rot(1,:),X_rot(2,:),I_row, ...
                 new_x_coord(:), new_y_coord(:));
 Irot = reshape(Irot, size(new_x_coord));  
end