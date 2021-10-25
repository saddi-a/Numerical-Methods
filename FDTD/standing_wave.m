function [Ex,Ey,Hz] = standing_wave(x_Ex_grid,y_Ex_grid,x_Ey_grid,y_Ey_grid,x_Hz_grid,y_Hz_grid,tE0,tH0,f,k_unit,XL)


%   Case of a uniform plane wave in free space with wavenumber in the k_unit direction, frequency f
    k = (2*pi*f/3d8)*k_unit;
    Ey(:,:) =  sin(k(1).*(x_Ey_grid-XL)).*sin(2*pi*f*tE0) ;
    Ex(:,:) =  zeros(size(x_Ex_grid));
    Hz(:,:) =  cos(k(1).*(x_Hz_grid-XL)).*cos(2*pi*f*tH0)/(120*pi);

end

