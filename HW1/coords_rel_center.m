function [ range ] = coords_rel_center( dim )
% COORDS_REL_CENTER Generate range of coordinates relative to image center
%   Given the length of one of the image dimensions, generate a range of 
%   coordinates relative to the center of the dimension.
%

% if the length is even, range should go from -dim/2 to dim/2 - 1
if mod(dim,2) == 0
  range = -dim/2:(dim/2 - 1);
% otherwise, range from ceil(-dim/2) to floor(dim/2)
else
  range = ceil(-dim/2):floor(dim/2); 
end


end

