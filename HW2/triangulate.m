function X = triangulate(xL,xR,camL,camR)

%
%  function X = triangulate(xL,xR,camL,camR)
%
%  INPUT:
%   
%   xL,xR : points in left and right images  (2xN arrays)
%   camL,camR : left and right camera parameters
%
%
%  OUTPUT:
%
%    X : 3D coordinate of points in world coordinates (3xN array)
%
%


% 1. convert from pixel coordinates back into meters with unit focal 
% length by subtracting off principal point and dividing through by 
% focal length...  call the results qR and qL.

% 2. make the left camera the origin of the world coordinate system by 
% transforming both cameras appropriately in order to find the rotation
% and translation (R,t) relating the two cameras

% 3. solve the equation:  
%   Z_l * qL = Z_r * R * qR + t
% for the Zs using least squares 

% 4. use Z_l compute the 3D coordinates XL in left camera reference frame

% 5. if the left camera wasn't at the origin then map XL back to world coordinates X


