%forest
im = imread('forest.jpg');
im2 = imread('shining.jpg');

fftA = fft2(im);
fftB = fft2(im2);
x = ifft2(fftA + fftB);
figure(1);
imshow(uint8(x));

%lion
im3 = imread('lion-cub.jpg');
im4 = imread('curve_brighter.jpg');

fftC = fft2(im3);
fftD = fft2(im4);
y = ifft2(abs(fftD).*exp(1i*angle(fftC)));
figure(2);
imshow(uint8(y));

%smoke
im5 = imread('trees.jpg');
im6 = imread('smoke.jpg');

fftE = fft2(im5);
fftF = fft2(im6);
m = ((0.5*abs(fftE).*exp(1i*angle(fftE))) + fftF);
n = ifft2(m);
figure(3);
imshow(uint8(n));



