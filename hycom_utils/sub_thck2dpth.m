     function [ZZ,ZM] = sub_thck2dpth(dH);
% [ZZ,ZM] = sub_thck2dpth(dH);
%
%  Given 3D array of layer thicknesses (nlev, JD, ID), nlev - vertical layers,
% construct arrays of interf. depths and depths of the middle of the layers
% Units - pressure Pa, or m -> will be converted to m
%
fprintf('thck2dpth: Interface depths\n');
rg=9806;
onemm=rg*0.001;
md=nanmax(nanmax(nanmax(abs(dH))));
if md>2*rg,
  dH=dH./rg;  % Pa -> m
end;

dH(isnan(dH))=0;
[nl,JD,ID]=size(dH);
ZZ=zeros(1,JD,ID);
ZM=zeros(1,JD,ID);
for kk=1:nl
  dh=squeeze(dH(kk,:,:));
  ZZ(kk+1,:,:)=squeeze(ZZ(kk,:,:))-abs(dh);
  ZM(kk,:,:)=0.5*(ZZ(kk,:,:)+ZZ(kk+1,:,:));
  fprintf(' :: Layer %i, min, max = %6.2f %6.2f\n',...
	  kk,min(min(ZZ(kk,:,:))),max(max(ZZ(kk,:,:))));
end

return


