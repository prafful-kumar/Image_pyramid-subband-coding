function [img , res] = pyramid(image)
%% neighborhood averaging

H = fspecial('average',[2 2]);
X = imfilter(image,H);

%% downsampling
Xdown = X(1:2:end,1:2:end);
img = Xdown ;
%% upsampling
% up = size(Xdown)*2;
% Xup = zeros(up);
% Xup(1:2:end,1:2:end) = Xdown;

%% Interpolation(pixel replication)
Inter = repelem(Xdown,2,2);

%% Residual
res = image - Inter;

end