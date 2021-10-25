function Mz = magnetic_current(x_Hz,y_Hz,t_E,f,k_unit)

%   Magnetic source driving a uniform plane wave in free space with wavenumber in the k_unit direction, frequency f
    k = (2*pi*f/3d8)*k_unit;
    [t_Mz_grid,y_Mz_grid] = meshgrid(t_E,y_Hz);
    Mz(:,:,:) = zeros(length(x_Hz),length(y_Hz),length(t_E));
   
    % Definition for the file 2B and 3
    Mz(floor(0.5*length(x_Hz)+1),:,1:58)=cos(2*pi*f*t_Mz_grid(:,1:58));

    % Definition for the files 3 and 4
    
end