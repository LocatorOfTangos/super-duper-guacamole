%% Code 
c = load('coastlines'); 
[lon,lat] = meshgrid(linspace(-179, 179, 180), linspace(-89.5,89.5, 180)); 
%[lon,lat] = meshgrid(linspace(-175, 175, 18), linspace(-85,85, 18)); 
land = landmask(lat,lon)*1 
worldmap('world') 
h=pcolorm(lat,lon,land)