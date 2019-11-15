function final = colorbar(im,K)
    count = zeros(1,256);

    for i = 1:size(im,1)
        for j = 1:size(im,2)
            count(im(i,j)+1) = count(im(i,j)+1) + 1;
        end
    end
    
    cnt = sort(count);
    lb = zeros(1,K);
    dom = zeros(1,K);
    
    for i = 1:K
        lb(i) = cnt(256-i);
    end
    
    for i = 1:K
        for j = 1:256
            if(lb(i)==count(j))
                dom(i) = j;
            end
        end
        %count(jj) = 0;
    end
    
    final = uint8(zeros(20,200));
    
    for i = 1:K
        for row = 1:20
            for col = 1:200
                if col>=((i-1)*200)/K && col<=(i*200)/K
                    final(row,col) = dom(i);
                end
            end
        end
    end
end