diamond = zeros(200,200);
cx = 100;
cy = 100;
radius = 50;

for i=1:200
    for j=1:200
        if abs(cx-i) + abs(cy-j) <= radius
            diamond(i,j) = 255;
        end
    end
end
imshow(diamond)
    

