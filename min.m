org = double(rgb2gray(imread("abd.jpg")));
[r,c] = size(org);
new = zeros(r,c);

for i=2:r-1
    for j=2:c-1
        temp = org(i-1:i+1,j-1:j+1);
        new(i,j) = min(temp(:));
    end
end

imshow(uint8(new));
