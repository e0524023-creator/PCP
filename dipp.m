a=imread('C:\Users\ME-LAB\Desktop\360_F_301838340_qtTiMO3hkNQpv6HLQsLD3N5p5qojPyG5.jpg');
b=imread('C:\Users\ME-LAB\Desktop\x-ray.jpg');
subplot(3,3,1);
imshow(a);
title('image')
subplot(3,3,2);
imshow(b);
title("original image")
[R C P]=size(a)
imfinfo("C:\Users\ME-LAB\Desktop\360_F_301838340_qtTiMO3hkNQpv6HLQsLD3N5p5qojPyG5.jpg")
imwrite(a,'C:\Users\ME-LAB\Desktop\360_F_301838340_qtTiMO3hkNQpv6HLQsLD3N5p5qojPyG5.jpg')