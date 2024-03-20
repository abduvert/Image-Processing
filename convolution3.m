myfilter = [-1 -1 -1; -1 8 -1; -1 -1 -1];  

org = double(rgb2gray(imread("abd.jpg")));
[r, c] = size(org);
new = zeros(r, c);

for i = 2:r-1
    for j = 2:c-1
        temp = org(i-1:i+1, j-1:j+1);
        myvalues = sum(sum(temp .* myfilter));
        new(i, j) = myvalues;
    end
end

imshow(uint8(new));
