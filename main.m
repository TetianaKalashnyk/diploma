info = dicominfo('drsprg_010_POST.dcm');
Y = dicomread(info);
n_slices = size(Y,4);

%show research
% figure
% contrast = [];
% for i=1:n_slices
%     imshow(Y(:,:,:,i),[]);
%     axis on
%     drawnow;
% end

%search for the most contrasting image in the first half
[max_contrast, max_contrast_im] = MAX_contrast_im(n_slices,Y);
% figure;
% plot (1:length(max_contrast),max_contrast,max_contrast_im,max_contrast(max_contrast_im),'o');
% figure;
% imshow(Y(:,:,:,max_contrast_im),[]);

%image segmentation
max_contrast_im_double = double(Y(:,:,:,max_contrast_im));
[BW,maskedImage] = segmentImage(max_contrast_im_double);
% figure;
% imshow(maskedImage);

%renogram
[intens_right] = renogram_right(BW,n_slices,Y);
% figure;
% plot (1:length(intens_right),intens_right);
% title('right');

[intens_left] = renogram_left(BW,n_slices,Y);
% figure;
% plot (1:length(intens_left),intens_left);
% title('left');

figure;
plot (1:length(intens_left),intens_left,'r',1:length(intens_right),intens_right,'b');
title('renograms');
legend('left','right');

% Tmax
[Tmax_Y_right Tmax_X_right] = max(intens_right);
Tmax_right = Tmax_X_right * 10 / 60;
[Tmax_Y_left Tmax_X_left] = max(intens_left);
Tmax_left = Tmax_X_left * 10 / 60;

fid = fopen('param.txt', 'wt');
fprintf(fid,'%6s','Tmax left = ');
fprintf(fid,'%6.2f\n',Tmax_left);
fprintf(fid,'%6s','Tmax right = ');
fprintf(fid,'%6.2f\n',Tmax_right);
fclose(fid);
