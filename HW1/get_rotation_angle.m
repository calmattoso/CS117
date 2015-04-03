function [ angle ] = get_rotation_angle( x1, y1, x2, y2 )
%GET_ROTATION_ANGLE given two pairs of x,y coordinates find the rotation
%  angle, such that their line becomes horizontal
%   

% Now find the arc whose tangent is defined by these two points
angle = atan(tan((y2-y1)/(x2-x1))) * 180/pi;

% A special case is that of 0 and 90 degrees rotations
if x1 == x2
  % 0 degree rotation
  if y1 == y2
    angle = 0;
  % 90 degrees rotation
  else 
    angle = 90;    
  end
end

end

