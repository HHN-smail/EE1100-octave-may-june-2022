close all; clear all; clc;

v_now = zeros(30,30);

v_prev = zeros(30,30);
v_now(1,:) = 10;
imagesc(v_now);colorbar;
iter = 0;
while iter < 10
    for i=2:1:29
    for j = 2:1:29
      v_now(i,j) = (v_now(i+1,j)+ v_now(i-1,j) + v_now(i, j+1)+v_now(i, j-1))/4;
    endfor
  endfor
  iter = iter + 1;
  pcolor(v_now);
  shading('interp');
  colormap('jet');
  colorbar;
  title(iter);
  pause(0.1);
end
[ex,ey] = gradient(v_now);
quiver(-ex,-ey);
waitfor(gcf);