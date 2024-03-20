org = double(rgb2gray(imread("cricket.jpg")));
[r,c] = size(org);
average = zeros(r,c);

nsize = 6;  %specify the filter size 6*6.....
halfSize = ceil(nsize / 2); %this is the k/2 thing

for i = halfSize + 1:r - halfSize
    for j = halfSize + 1:c - halfSize
        neighborhood = org(i - halfSize:i + halfSize, j - halfSize:j + halfSize);
        meanValue = mean(neighborhood(:));
        average(i, j) = meanValue;
    end
end

C = org - average;
sharpened = org + C;

imshow(uint8(sharpened))
