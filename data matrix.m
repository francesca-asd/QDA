% image import 
for k = 1:57
    if k<10
    jpgFileName = strcat('0',num2str(k), '.jpg')
    else  jpgFileName = strcat(num2str(k), '.jpg')
    end
    
    imageData = imread(jpgFileName);
end



