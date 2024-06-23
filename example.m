load("orography.mat");%load topography data
mjd=59215.18; %modified julian date
lat=45/180*pi; %latitude in radian
lon=118/180*pi; % longitude in radian
h_ell=100; %height in m


% example: VMF1(2°×2.5°)
load("taumodel2.mat");
load("gamamodel2.mat");
indir_VMF1_grid=[pwd filesep 'VMF1'];%indir_VMF1_grid is the path of your own VMF file. pwd command returs the current folder; please replace the path with your path;

VMF1_grid_file=[];% VMF grid initial
[  zhd , zwd , VMF1_grid_file ] = vmf1_grid_new ( indir_VMF1_grid, orography_VMF1 , VMF1_grid_file , mjd , lat , lon , h_ell ,taumodel2,gamamodel2);



% example: VMF3(1°×1°)
load("taumodel1.mat");
load("gamamodel1.mat");
indir_VMF3_grid=[pwd filesep 'VMF31'];%pwd command returs the current folder, please replace the path with your own VMF3 file path here;
VMF3_grid_file=[];% VMF grid initial
grid_res=1; % gird resolution
[  zhd , zwd , VMF3_grid_file ] = vmf3_grid_new ( indir_VMF3_grid, orography_VMF31 , VMF3_grid_file , mjd , lat , lon , h_ell , grid_res ,taumodel1,gamamodel1);


%example: VMF3(5°×5°)
load("taumodel5.mat");
load("gamamodel5.mat");
indir_VMF3_grid=[pwd filesep 'VMF35'];
VMF3_grid_file=[];% VMF grid initial
grid_res=5; % gird resolution
[  zhd , zwd , VMF3_grid_file ] = vmf3_grid_new ( indir_VMF3_grid, orography_VMF35 , VMF3_grid_file , mjd , lat , lon , h_ell , grid_res ,taumodel5,gamamodel5);