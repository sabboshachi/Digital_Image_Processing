import cv2
import numpy as np
from matplotlib import pyplot as plt

# Load the image
img = cv2.imread("IMG_20190221_151522_321.jpg", cv2.IMREAD_GRAYSCALE)

# Create a high-pass filter
kernel = np.array([[-1, -1, -1], [-1, 8, -1], [-1, -1, -1]])

# Apply the filter to the image
filtered_img = cv2.filter2D(img, -1, kernel)

# Plot the original and filtered images
plt.subplot(121), plt.imshow(img, cmap='gray')
plt.title("Original Image"), plt.xticks([]), plt.yticks([])

plt.subplot(122), plt.imshow(filtered_img, cmap='gray')
plt.title("Filtered Image"), plt.xticks([]), plt.yticks([])

plt.show()

