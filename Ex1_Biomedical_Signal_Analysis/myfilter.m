function [y,z] = myfilter(b,x,z, T)
  y = zeros(size(x), "like", T.y);
  for n = 1:length(x)
    z(:) = [x(n); z(1:end-1)];
    y(n) = b * z;
  end
end