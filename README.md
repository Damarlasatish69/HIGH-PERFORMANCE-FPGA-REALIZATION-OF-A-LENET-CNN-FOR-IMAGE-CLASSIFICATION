# HIGH-PERFORMANCE-FPGA-REALIZATION-OF-A-LENET-CNN-FOR-IMAGE-CLASSIFICATION

## 📌 Project Title

LeNet CNN Accelerator using Verilog HDL on FPGA for MNIST Handwritten Digit Recognition

---

## 🎯 Project Objective

The objective of this project is to design and implement a hardware accelerator for a Convolutional Neural Network (CNN) based on the LeNet architecture using Verilog HDL on an FPGA platform. The accelerator performs fast and energy-efficient image classification compared to software execution.

---

## 🧠 Background

Convolutional Neural Networks (CNNs) are widely used for image recognition tasks. However, CNN inference in software requires millions of Multiply-Accumulate (MAC) operations, resulting in high latency and power consumption. FPGA-based hardware acceleration enables parallel execution and improves performance for real-time and edge AI applications.

LeNet is a simple and well-known CNN architecture designed for handwritten digit recognition and is suitable for hardware implementation.

---

## 🏗 System Architecture

The hardware CNN pipeline implemented:

Input Image (28×28)
→ Convolution Layer (Conv3D)
→ Pooling Layer
→ Convolution Layer
→ Pooling Layer
→ Fully Connected Layer
→ Softmax Output
→ Predicted Digit

---

## ⚙ Hardware Modules Implemented

* **Conv3D.v** — Performs convolution operation
* **MACC.v** — Multiply-Accumulate computation unit
* **PE.v** — Processing Element block
* **PE_Array.v** — Parallel MAC processing array
* **Pooling.v** — Max/Average pooling layer
* **FC.v** — Fully connected layer
* **softmax.v** — Output probability layer
* **LeNet.v** — Top module integrating all layers
* **tb_LeNet.v** — Testbench for simulation

---

## 🧮 Key Design Concepts

* Parallel MAC computation
* Processing Element (PE) array architecture
* Data reuse for efficiency
* Layer-wise hardware mapping
* On-chip memory weight storage
* RTL design using Verilog HDL

---

## 🛠 Tools Used

* Verilog HDL — Hardware Description Language
* Xilinx Vivado — Synthesis & Implementation
* Vivado Simulator / ModelSim — Functional simulation
* Python — CNN model training & weight export
* Google Colab / Jupyter — Training environment

---

## 🧪 Dataset Used

MNIST — Handwritten digit dataset

* 60,000 training images
* 10,000 testing images
* Image size: 28×28 grayscale
* 10 output classes (digits 0–9)

---

## ▶ Implementation Flow

1. Train LeNet model in Python
2. Export trained weights
3. Implement CNN layers in Verilog
4. Create testbench
5. Run simulation
6. Run synthesis in Vivado
7. Perform implementation
8. Generate bitstream
9. Program FPGA

---

## 📊 Expected Outcomes

* Correct CNN inference behavior in simulation
* Faster execution than software model
* Reduced latency through parallel MAC
* FPGA resource-efficient design
* Suitable for edge AI applications

---

## 🚀 Applications

* Smart cameras
* Digit recognition systems
* Edge AI devices
* Embedded vision systems
* Real-time image classification

---

## 👨‍🎓 Academic Use

This project is developed as a B.Tech Final Year Project in Electronics and Communication Engineering (ECE) focusing on VLSI, FPGA, and AI hardware acceleration.

---
