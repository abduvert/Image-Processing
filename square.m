org = double(rgb2gray(imread("abd.jpg")));
[r,c] = size(org);
negative = zeros(r,c);

for i=1:r
    for j=1:c
        negative(i,j)  = 255 - org(i,j);
    end
end

imshow(uint8(negative));
