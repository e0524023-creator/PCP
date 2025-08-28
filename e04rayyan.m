% MATLAB program for morphological operations (erosion, dilation, opening, closing)

% Step 1: Load the image
image = imread('mooncrater.jpg');  % Replace with your image file path

% Step 2: Convert to grayscale if the image is not already grayscale or binary
if size(image, 3) == 3
    image = rgb2gray(image);  % Convert RGB to grayscale
end

% Step 3: Convert to binary image (optional, depending on the application)
binary_image = imbinarize(image);  % Convert to binary image

% Step 4: Define the structuring element (can be customized)
se = strel('disk', 5);  % Disk-shaped structuring element with radius 5

% Step 5: Perform erosion
eroded_image = imerode(binary_image, se);

% Step 6: Perform dilation
dilated_image = imdilate(binary_image, se);

% Step 7: Perform opening (erosion followed by dilation)
opened_image = imopen(binary_image, se);

% Step 8: Perform closing (dilation followed by erosion)
closed_image = imclose(binary_image, se);

% Step 9: Display the original and processed images
figure;

subplot(2, 3, 1);
imshow(image);
title('Original Grayscale Image');

subplot(2, 3, 2);
imshow(binary_image);
title('Binary Image');

subplot(2, 3, 3);
imshow(eroded_image);
title('Eroded Image');

subplot(2, 3, 4);
imshow(dilated_image);
title('Dilated Image');

subplot(2, 3, 5);
imshow(opened_image);
title('Opened Image');

subplot(2, 3, 6);
imshow(closed_image);
title('Closed Image');

% You can save any of the processed images if needed
% imwrite(eroded_image, 'eroded_mars_image.jpg');

%Output Inference

%Dilation- Expands bright crater rims, enhancing larger features and connecting fragmented regions.
%Erosion - Shrinks bright areas, removing small craters and isolating larger structures.
%Opening - Eliminates small, isolated bright spots, reducing noise while preserving major craters.
%Closing: Fills small dark pits and gaps, reinforcing crater boundaries andsmoothing surfaces. 