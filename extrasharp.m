org = double(rgb2gray(imread("sher.jpg")));
[r,c] = size(org);
A = zeros(r,c);

for i=2:r-1
    for j=2:c-1
        temp = org(i-1:i+1,j-1:j+1);
        mysum = sum(temp(:));
        value = mysum/9;
        A(i,j) = value;
    end
end
C = org - A;

imshow(uint8(C));
