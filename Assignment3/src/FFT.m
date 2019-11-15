function[F] = FFT(f)
        n = size(f,2);  
        if (n == 1)
            F = f;
        else
            f_even = f(:,1:2:n);
            f_odd = f(:,2:2:n);
            W = exp(-2*pi*j.*[0:(n/2)-1]/n);
            q = 1:1:size(f,1);
            [W,q] = meshgrid(W,q);
            X1 = FFT(f_even);
            X2 = FFT(f_odd);  
            F1 = X1 + X2.*W;
            F2 = X1 - X2.*W;
            F = [F1 F2];
        end
end