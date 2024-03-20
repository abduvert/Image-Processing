hat_filter = [-1 -1 -1 -1 -1; -1 -1 -1 -1 -1; -1 -1 24 -1 -1; -1 -1 -1 -1 -1; -1 -1 -1 -1 -1];

org = double(rgb2gray(imread("abd.jpg")));
[r, c] = size(org);
new = zeros(r, c);

for i = 3:r-2
    for j = 3:c-2
        temp = org(i-2:i+2, j-2:j+2);
        myvalues = sum(sum(temp .* hat_filter));   %.*means element wise multiplication
        new(i, j) = myvalues;
    end
end

imshow(uint8(new));
