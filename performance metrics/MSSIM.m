function k = MSSIM(Y, Y_ref)
% input size : Bands*observation
 K = [0.01 0.03];
 window = fspecial('gaussian', 11, 1.5);
[row, column, band] = size(Y_ref);
N=row*column;

Y= reshape(Y,N,band)';
Y_ref = reshape(Y_ref, N, band)';


for i=1:size(Y,1)
     L = max([max(Y(i,:)),max(Y_ref(i,:))]);
    k_tmp(i)  = ssim_index(reshape(Y_ref(i,:),[row, column]), reshape(Y(i,:),[row, column]), K, window, L);
end
k=mean(k_tmp);
fprintf('\n The SSIM value is %0.2f', k);