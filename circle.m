circl = zeros(200,200);
cx = 100;
cy = 100;
radius = 50;

for i=1:200
    for j=1:200
        if sqrt((i-cx)^2+(j-cy)^2) <= radius
            circl(i,j) = 255;
        end
    end
end
imshow(circl)
    

