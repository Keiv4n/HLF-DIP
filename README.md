# HLF-DIP
Implementation of the paper "Unsupervised Hyperspectral Denoising Based on Deep Image Prior and Least Favorable Distribution", IEEE JSTARS, 2022,

[[Paper]](https://ieeexplore.ieee.org/document/9813381)

___

**Abstract:** 

This paper considers the inverse problem under hyperspectral images (HSIs) denoising framework. Recently, it has been shown that deep learning is a promising approach to image denoising. However, deep learning to be effective usually needs a massive amount of training data. Moreover, in a practical scenario, HSIs may get contaminated by different kinds of noises such as Gaussian and/or sparse noise. Lately, it has been reported that the convolutional neural network (CNN), the core element used by deep image prior (DIP), is able to capture image statistical characteristics without the need of training, i.e., restore the clean image blindly. Nonetheless, there exists some performance gap between DIP and state-of-the-art methods in HSIs (e.g., low-rank models). By applying the Huber loss function (HLF), which is derived through a least favorable distribution in robust statistics, to DIP, we propose a novel unsupervised denoising algorithm, referred as to the HLF-DIP, free from pre-training and without involving any regularizer. Extensive experimental results are provided to demonstrate that the proposed HLF-DIP algorithm significantly outperforms seven state-of-the-art algorithms in both complexity (thanks to no regularization) and robustness against complex noise (e.g., mixed types of noises).

___

**Requirements**:

- PyTorch 1.8
- NumPy
- SciPy
- scikit-image
- Matplotlib

___

**Getting Started:**

You just need to run demo.ipynb to reproduce the result on the Washington DC Mall dataset (Case 3). For using your own dataset, you need to copy your dataset to the "data" folder and change the `file_name  = 'data/WDC_Case3.mat'` in the notebook.

___

This implementation is based on [[1]](https://github.com/DmitryUlyanov/deep-image-prior) and [[2]](https://github.com/acecreamu/deep-hs-prior#deep-hyperspectral-prior-single-image-denoising-inpainting-super-resolution).

