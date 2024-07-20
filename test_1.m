%% Program for Ray tracing simulation for square based receiver solar oven
% Note: This program is for only square shape of "bottom" surface

%% Solar radiation on Top of the surface
day_num = 1 % input('Please enter the day from total 365 days per year = ')
a = fun_day_solar_data(day_num);

%% Discretization of top surface
load ('discri_1_Copy.mat');
var = {'i','j','k','counter','x','X','y','Y','z','Z'};
clear (var{:});
topside = 4%input('Enter side of top = ')
bottomside = 4%input('Enter side of bottom = ')
[s1 s2 r1 r2 r3 r4] = fun_coordinate_of_all_surface_top_origin(topside,bottomside);
%% Select a single point for first ray transfer to system

[m n] = size (point3d)
yyy (1:n)= 0;
for ii = 1:n
    t_final_1 = fun_line_plane_intersection(ii); % for loop need to be add in case of angle of incident ray
    yyy(ii) = t_final_1;
end





