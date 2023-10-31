function cmp = colormap_blue_yellow(nint);
% Set colors from dark blue - torquiose  - yellow
% interpolated for nint colors
%

C0 =...
       [            0.2081                    0.1663                    0.5292
          0.21162380952381         0.189780952380952          0.57767619047619
         0.212252380952381         0.213771428571429         0.626971428571429
                    0.2081                    0.2386         0.677085714285714
         0.195904761904762         0.264457142857143                    0.7279
         0.170728571428571         0.291938095238095         0.779247619047619
         0.125271428571429         0.324242857142857         0.830271428571429
        0.0591333333333334         0.359833333333333         0.868333333333333
        0.0116952380952381         0.387509523809524         0.881957142857143
       0.00595714285714286         0.408614285714286         0.882842857142857
        0.0165142857142857                    0.4266         0.878633333333333
         0.032852380952381         0.443042857142857         0.871957142857143
        0.0498142857142857         0.458571428571429         0.864057142857143
        0.0629333333333333         0.473690476190476         0.855438095238095
        0.0722666666666667         0.488666666666667                    0.8467
        0.0779428571428571         0.503985714285714         0.838371428571429
         0.079347619047619          0.52002380952381         0.831180952380952
        0.0749428571428571         0.537542857142857         0.826271428571429
        0.0640571428571428         0.556985714285714         0.823957142857143
        0.0487714285714286         0.577223809523809         0.822828571428571
        0.0343428571428572         0.596580952380952         0.819852380952381
                    0.0265                    0.6137                    0.8135
        0.0238904761904762         0.628661904761905         0.803761904761905
        0.0230904761904762         0.641785714285714         0.791266666666667
        0.0227714285714286         0.653485714285714         0.776757142857143
        0.0266619047619048         0.664195238095238         0.760719047619048
        0.0383714285714286         0.674271428571429         0.743552380952381
        0.0589714285714286         0.683757142857143         0.725385714285714
                    0.0843         0.692833333333333         0.706166666666667
         0.113295238095238                    0.7015         0.685857142857143
         0.145271428571429         0.709757142857143         0.664628571428571
         0.180133333333333         0.717657142857143         0.642433333333333
         0.217828571428571         0.725042857142857         0.619261904761905
         0.258642857142857         0.731714285714286         0.595428571428571
         0.302171428571429         0.737604761904762         0.571185714285714
         0.348166666666667         0.742433333333333         0.547266666666667
         0.395257142857143                    0.7459         0.524442857142857
         0.442009523809524         0.748080952380952         0.503314285714286
         0.487123809523809         0.749061904761905         0.483976190476191
         0.530028571428571         0.749114285714286         0.466114285714286
         0.570857142857143         0.748519047619048         0.449390476190476
         0.609852380952381         0.747314285714286         0.433685714285714
                    0.6473                    0.7456                    0.4188
         0.683419047619047         0.743476190476191         0.404433333333333
         0.718409523809524         0.741133333333333          0.39047619047619
         0.752485714285714                    0.7384         0.376814285714286
         0.785842857142857         0.735566666666667         0.363271428571429
         0.818504761904762         0.732733333333333         0.349790476190476
         0.850657142857143                    0.7299         0.336028571428571
         0.882433333333333         0.727433333333333                    0.3217
         0.913933333333333         0.725785714285714          0.30627619047619
         0.944957142857143         0.726114285714286         0.288642857142857
         0.973895238095238         0.731395238095238         0.266647619047619
         0.993771428571429         0.745457142857143         0.240347619047619
         0.999042857142857         0.765314285714286         0.216414285714286
         0.995533333333333         0.786057142857143         0.196652380952381
                     0.988                    0.8066         0.179366666666667
         0.978857142857143         0.827142857142857         0.163314285714286
                    0.9697         0.848138095238095         0.147452380952381
         0.962585714285714         0.870514285714286                    0.1309
         0.958871428571429                    0.8949         0.113242857142857
          0.95982380952381         0.921833333333333        0.0948380952380953
                    0.9661         0.951442857142857        0.0755333333333333
                    0.9763                    0.9831                    0.0538];



nc = size(C0,1);
X = [0:nc-1]./nc;
X = X(:);
X = X./max(X);
Xi = [0:nint-1]./nint;
Xi = Xi(:);
Xi = Xi./max(Xi);

c1 = interp1(X,C0(:,1),Xi,'spline');
c2 = interp1(X,C0(:,2),Xi,'spline');
c3 = interp1(X,C0(:,3),Xi,'spline');

c1 = c1(:);
c2 = c2(:);
c3 = c3(:);
cmp= [c1,c2,c3];

return

