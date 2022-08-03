function  out = MFSIM(Ori_H,Denoi_HSI)
[M,N,B] = size(Ori_H);
 

 for i=1:B
     T1 = Ori_H(:,:,i);T2 = Denoi_HSI(:,:,i);
  FSIMV(i) = FSIM(Ori_H(:,:,i)*255,Denoi_HSI(:,:,i)*255);
 end

out = mean(FSIMV);