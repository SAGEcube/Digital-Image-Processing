# Shannon–Fano Coding for Grayscale Image Compression (MATLAB)

## 📌 Overview
This project implements **Shannon–Fano coding**, a classical **lossless compression technique**, for compressing and decompressing grayscale images using MATLAB.

The algorithm assigns binary codes to pixel intensities based on their probabilities, ensuring that **more frequent symbols get shorter codes**, thereby reducing the overall storage size.

This implementation is written **from scratch**, without relying on any MATLAB compression toolboxes, and is fully compatible with **MATLAB Online**.

---

## 🎯 Objectives
- Implement Shannon–Fano coding manually
- Apply lossless compression to a grayscale image
- Encode and decode image data correctly
- Verify reconstruction accuracy
- Analyze compression performance

---

## 🧠 Theory (Short Explanation)
Shannon–Fano coding is a **probability-based variable-length coding algorithm**.

Key ideas:
- Pixel values are treated as symbols
- Symbols are sorted by decreasing frequency
- The symbol set is recursively divided into two groups with nearly equal total probability
- Binary digits (`0` and `1`) are assigned at each split

Unlike Huffman coding, Shannon–Fano does not always produce the optimal minimum-length code, but it is simpler and historically significant.

---

## 🛠️ Requirements
- MATLAB (Desktop or MATLAB Online)
- Grayscale image file (`img.jpg`) in the same directory

> No additional toolboxes required

---

## 📂 File Structure
Shannon_Fano_Image_Compression/
│
├── img.jpg % Input grayscale image
├── shannon_fano.m % MATLAB source code
└── README.md % Project documentation


---

## ⚙️ Algorithm Steps
1. Read grayscale image
2. Convert image into a 1D pixel array
3. Calculate frequency of each pixel value
4. Sort symbols by descending frequency
5. Generate Shannon–Fano codes recursively
6. Encode image into a binary bitstream
7. Decode the bitstream using reverse mapping
8. Reconstruct the image
9. Display original and decoded images
10. Compute compression statistics

---

## 📊 Compression Metrics
- **Original Size (bits)**  
  Number of pixels × 8

- **Compressed Size (bits)**  
  Length of encoded bitstream

- **Compression Ratio**  
  Original Size / Compressed Size

Higher symbol redundancy results in better compression efficiency.

---

## ✅ Key Features
- Lossless image compression
- Recursive Shannon–Fano code generation
- Reverse lookup decoding
- Toolbox-free MATLAB implementation
- MATLAB Online safe

---

## 📌 Output
- Original grayscale image
- Decoded image (identical to original)
- Compression statistics printed in Command Window

---

## ⚠️ Notes
- Shannon–Fano coding is **not always optimal** compared to Huffman coding
- String-based bitstream storage is memory-intensive
- Best suited for educational and conceptual understanding

---

## 🚀 Possible Extensions
- Compare compression ratio with Huffman coding
- Compute entropy and coding efficiency
- Implement bit-level storage instead of strings
- Extend to RGB images (channel-wise coding)

---

## 👤 Author
**Sandesh + ChatGPT**

---

## 📚 References
- C. E. Shannon, “A Mathematical Theory of Communication”
- Digital Image Processing – Gonzalez & Woods
- MATLAB Documentation
