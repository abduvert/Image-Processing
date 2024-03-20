A = double(rgb2gray(imread("galaxy.jpg")));
[r, c] = size(A);
B = zeros(r, c);

nsize = 21;  
halfSize = floor(nsize / 2);  


for i = halfSize + 1:r - halfSize
    for j = halfSize + 1:c - halfSize
        neighborhood = A(i - halfSize:i + halfSize, j - halfSize:j + halfSize);
        meanValue = mean(neighborhood(:));
        B(i, j) = meanValue;
    end
end


binaryMask = imbinarize(B, 0.1);
resultImage = A .* binaryMask;


figure;
subplot(2, 2, 1), imshow(uint8(A)), title('Original Image');
subplot(2, 2, 2), imshow(uint8(B)), title('Smoothed Image');
subplot(2, 2, 3), imshow(uint8(binaryMask)), title('Binary Mask');
subplot(2, 2, 4), imshow(uint8(resultImage)), title('Result after Multiplication');
