% Simple quick look and comparision of idealized lake runs
% thinf, tore.hattermann@npolar.no
% May 20 2022

clear
close all
% data file 1
f1 = '/Volumes/Elements/norway_run/with_heat/roms_his_0056.nc'

% data file 2
f2 = '/Volumes/Elements/norway_run/without_heat/roms_his_0056.nc'

% read grid
% assume common grid, repeat with data_file =f2; and updated grid file
% if comparing results
% from two diferent grids
grid_file = '/Volumes/Elements/norway_run/bowl_grid.nc'
data_file =f1;
clear Sinp
Sinp.theta_s=ncread(data_file,'theta_s');
Sinp.theta_b=ncread(data_file,'theta_b');
Sinp.Tcline=ncread(data_file,'Tcline');
Sinp.Vtransform=ncread(data_file,'Vtransform');
Sinp.Vstretching=ncread(data_file,'Vstretching');
Sinp.N=length(ncread(data_file,'Cs_r'));

Tcline=length(ncread(data_file,'Tcline'));
h=ncread(grid_file,'h');
hmin=min(h(:));
Sinp.hc=min([hmin,Tcline]);


% structure containing grid metrics
g1=get_roms_grid(grid_file,Sinp);

% Load some data
ti = 24; % chose time index
dum = ncread(f1,'zeta');
zeta1 = dum(:,:,ti);
dum = ncread(f1,'temp');
temp1 = dum(:,:,:,ti);
dum = ncread(f1,'u');
u1 = dum(:,:,:,ti);
dum = ncread(f1,'v');
v1 = dum(:,:,:,ti);

dum = ncread(f1,'ubar');
ub1 = dum(:,:,ti);
dum = ncread(f1,'vbar');
vb1 = dum(:,:,ti);
clear dum


% read grid
% assume common grid, repeat with data_file =f2; and updated grid file
% if comparing results
% from two diferent grids
grid_file = '/Volumes/Elements/norway_run/bowl_grid.nc'
data_file =f2;
clear Sinp
Sinp.theta_s=ncread(data_file,'theta_s');
Sinp.theta_b=ncread(data_file,'theta_b');
Sinp.Tcline=ncread(data_file,'Tcline');
Sinp.Vtransform=ncread(data_file,'Vtransform');
Sinp.Vstretching=ncread(data_file,'Vstretching');
Sinp.N=length(ncread(data_file,'Cs_r'));

Tcline=length(ncread(data_file,'Tcline'));
h=ncread(grid_file,'h');
hmin=min(h(:));
Sinp.hc=min([hmin,Tcline]);


% structure containing grid metrics
g2=get_roms_grid(grid_file,Sinp);

% Load some data
ti = 24; % chose time index
dum = ncread(f2,'zeta');
zeta2 = dum(:,:,ti);
dum = ncread(f2,'temp');
temp2 = dum(:,:,:,ti);
dum = ncread(f2,'u');
u2 = dum(:,:,:,ti);
dum = ncread(f2,'v');
v2 = dum(:,:,:,ti);

dum = ncread(f2,'ubar');
ub2 = dum(:,:,ti);
dum = ncread(f2,'vbar');
vb2 = dum(:,:,ti);
clear dum


% simple look at things

    figure(1);clf

for i =1:4
    switch i
        case 1
            % surface elevation
            x =g1.x_rho;
            y =g1.y_rho;
            pvar = zeta1.*g1.mask_rho;
            tit = 'zeta with bottom heat fluxes';
        case 2
                % surface elevation
            x =g1.x_u;
            y =g1.y_u;
            %pvar = ub1.*g1.mask_u;
            pvar = u1(:,:,end).*g1.mask_u;
            tit = 'u surf with bottom heat fluxes';
%         case 3
%                 % surface elevation
%             x =g1.x_v;
%             y =g1.y_v;
%             pvar = vb1.*g1.mask_v;
%             tit = 'vbar';
            case 4
                % surface elevation
            x =g1.x_u;
            y =g1.y_u;
            %pvar = ub1.*g1.mask_u;
            pvar = u1(:,:,1).*g1.mask_u;
            tit = 'u bott with bottom heat fluxes';
         case 3
            % surface elevation
            x =g1.x_rho;
            y =g1.y_rho;
            pvar = temp1(:,:,end).*g1.mask_rho;
            pvar(g1.mask_rho==0)=nan;
            tit = 'surf temp with bottom heat fluxes';
    end
    subplot(2,2,i)
    pcolor(x,y,pvar); shading flat
    colorbar
    title(tit)
end

%Try vertical section

figure(2);clf

i = 1:101;
j= 50;
x =repmat(squeeze(g1.x_rho(i,j)),[1 g1.N]);
y =squeeze(g1.z_r(i,j,:));
pvar = squeeze(temp1(i,j,:));
tit = 'temp with bottom heat fluxes';

contourf(x,y,pvar); shading flat
    colorbar
    title(tit)
    
    figure(3);clf

i = 1:100;
j= 50;
x =repmat(squeeze(g1.x_u(i,j)),[1 g1.N]);
y =squeeze(g1.z_u(i,j,:));
pvar = squeeze(u1(i,j,:));
%pvar = squeeze(u1(i,j,:)) - squeeze(u2(i,j,:)); % where u2 is at time zero
tit = 'temp with bottom heat fluxes';

pcolor(x,y,pvar); shading flat
    colorbar
    title(tit)

figure(4);clf

for i =1:4
    switch i
        case 1
            % surface elevation
            x =g2.x_rho;
            y =g2.y_rho;
            pvar = zeta2.*g2.mask_rho;
            tit = 'zeta';
        case 2
                % surface elevation
            x =g2.x_u;
            y =g2.y_u;
            %pvar = ub1.*g1.mask_u;
            pvar = u2(:,:,end).*g2.mask_u;
            tit = 'u surf';
%         case 3
%                 % surface elevation
%             x =g2.x_v;
%             y =g2.y_v;
%             pvar = vb2.*g2.mask_v;
%             tit = 'vbar';
            case 4
                % surface elevation
            x =g2.x_u;
            y =g2.y_u;
            %pvar = ub1.*g1.mask_u;
            pvar = u2(:,:,1).*g2.mask_u;
            tit = 'u bott';
         case 3
            % surface elevation
            x =g2.x_rho;
            y =g2.y_rho;
            pvar = temp2(:,:,end).*g2.mask_rho;
            pvar(g2.mask_rho==0)=nan;
            tit = 'surf temp';
    end
    subplot(2,2,i)
    pcolor(x,y,pvar); shading flat
    colorbar
    title(tit)
end

%Try vertical section

figure(5);clf

i = 1:101;
j= 50;
x =repmat(squeeze(g2.x_rho(i,j)),[1 g2.N]);
y =squeeze(g2.z_r(i,j,:));
pvar = squeeze(temp2(i,j,:));
tit = 'temp';

contourf(x,y,pvar); shading flat
    colorbar
    title(tit)
    
    figure(6);clf

i = 1:100;
j= 50;
x =repmat(squeeze(g2.x_u(i,j)),[1 g2.N]);
y =squeeze(g2.z_u(i,j,:));
pvar = squeeze(u2(i,j,:));
%pvar = squeeze(u1(i,j,:)) - squeeze(u2(i,j,:)); % where u2 is at time zero
tit = 'temp';

pcolor(x,y,pvar); shading flat
    colorbar
    title(tit)

