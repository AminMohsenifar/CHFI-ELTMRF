clc
clear
close all
%% Dataset selection
Name='Bavi';

PWmask=imread(['PWmask-',Name,'.tif']);
I1L=(double(imread(['PreFlood-',Name,'.tif'])));% Pre-flood SAR image
I2L=(double(imread(['PostFlood-',Name,'.tif'])));% Post-flood SAR image
Test=single(imread(['GroundTruth-',Name,'.tif']));% Ground truth
%% Implementation of the proposed CHFI-ELTMRF approach
tic
ELTMRFLabel=CHFI_ELTMRF(I1L,I2L,PWmask);
Runtime=round(toc,2);