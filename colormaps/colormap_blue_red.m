  function cmp = colormap_blue_red;
cmp=[];
p=255;
cmp(1,:)     = [25,25,112];
cmp(end+1,:) = [0,0,255];
cmp(end+1,:) = [61,89,171];
cmp(end+1,:) = [72,118,255];
cmp(end+1,:) = [202,225,255];
cmp(end+1,:) = [255,240,245];
cmp(end+1,:) = [255,192,203];
cmp(end+1,:) = [255,130,171];
cmp(end+1,:) = [255,62,150];
cmp(end+1,:) = [139,34,82];
cmp=cmp./p;