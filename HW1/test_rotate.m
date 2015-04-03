% test_rotate.m 
%   Simple visualization to test rotate.m
%

% plot random points; hard to see
 X = 10 * rand(2,50);            % generate 50 random points in 2D
 X = (X - mean2(X))/std2(X);
 figure(1); clf;                 % display a figure and clear it.
 plot(X(1,:),X(2,:),'g.');       % plot the original points as green dots
 Xrot = rotate(X,45);            % rotate the points by 45 degrees counterclockwise
 hold on;                        % tell matlab to not clear the figure when plotting additional points
 plot(Xrot(1,:),Xrot(2,:),'r.'); % plot the rotated points on the same figure
 hold off;
 
% plot a triangle, easier to check
 tr_X = [0 -0.5 0 0.5 -1 -0.5 0 0.5 1 -1.5 -1 -0.5 0 1 1.5 ...
          -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 ]; 
 tr_Y = [2 1 1 1 0 0 0 0 0 -1 -1 -1 -1 -1 -1 ...
         -2 -2 -2 -2 -2 -2 -2 -2 -2 ];
 
 % display a 360 degree rotation of the triangle
 figure(2); 
 for angle=0:15:360
     plot(tr_X,tr_Y,'g.');       % plot the original points as green dots
     Xrot = rotate([tr_X; tr_Y],angle); % rotate the points by 45 degrees counterclockwise
     hold on; % tell matlab to not clear the figure when plotting additional points
     plot(Xrot(1,:),Xrot(2,:),'r.'); % plot the rotated points on the same figure
     hold off;
     axis([-3 3 -3 3]);
     title(sprintf('%d degrees rotation', angle));
     drawnow;
     pause(0.5);
 end
 