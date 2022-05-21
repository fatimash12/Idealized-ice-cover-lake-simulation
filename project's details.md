# Idealized-ice-cover-lake-simulation
**Mean circulation in Seasonally ice-covered lakes forced by (Kirillin et al., 2015, Simojoki, 1940, Thanderz, 1973):**
1)Release of heat stored in sediments >>> Generating downslope density currents ( during initial stage of Ice cover) (Rizk et al., 2014)
2)Solar radiation Penetration >>> Producing vertical convection in the upper water layer (Mironov et al.,2002)(During late winter/ early spring)
3)Buoyancy fluxes resulting from deferential heating and surface inflows (Differential heating is a potential source of density-driven currents created by the radiative heating of open water augmented by the heat inflow from the warm surface runoff)(During late winter/ early spring)

**Differential heating**
Lake ice extensively separates the water column from wind and most atmospheric heat fluxes (Kirillin et al., 2012).However, under conditions of thin snow cover, sunlight penetrates the ice and heats the nearby water. 
In freshwater ice-covered lakes, the water temperature usually rises from the freezing point at the ice-water interface to the maximum water density (Tmd) (3.98 C) near the lake's bottom. For temperatures below Tmd, increasing the temperature leads to increasing the density. Thus, heating the highest coldest water becomes denser, causing it to sink and begin convective turbulence (Farmer, 1975). Forced radiative convection tends to homogenize and heat the upper part of the water column. 

**Convective flows**
lake bathymetry induces a relative excess heating of shallow waters, creating horizontal density gradients. This study shows that the dynamic response to these gradients depends sensitively on lake size and latitude – Earth’s rotation – and is controlled by the Rossby number.
The Rossby number is defined as (Gill 1982):
**Ro = U /f L**

Here, f is the Coriolis frequency, which increases with latitude, and U and L are the characteristic velocity and length scales of the flow, respectively.
*see:C. L. Ramon et al., 'Bathymetry and latitude modify lake warming under ice,' Hydrol. Earth Syst. Sci., 25,1813-1825,2021.*

**The importance of Earth’s rotation for horizontal flows can be parameterized with the Rossby number:**
Earth’s rotation affects horizontal flows when Ro <1
For the downslope gravity currents, the scales U and L correspond to the cross-shore velocity and the distance from the shore to the center of the lake basin, respectively. 
Gravity currents triggered by horizontal convection are usually “slow” (U of O (cm s−1 ), Fer et al., 2002; Monismith et al., 1990; Wells and Sherman, 2001), so their Rossby numbers are usually less than 1. 

**Freshwater lake characterstics** 
kirillin et al., 2015 explained that in freshwater lakes like Kilpisjärvi lake, when the temperature is below the maximum density temperature, heating at the lateral borders produces gravity currents across the bottom slope. 

Axisymmetric basin-scale distribution induced by heat ﬂux at the coastline in boreal Lake shows a dense underﬂow beginning close the margin, converging toward the lake center, producing warm upwelling return current across the lake water column's body. It induces by Coriolis force, which constitutes lake-wide clockwise rotation. 


The sediments gain heat from the water during spring and summer and lose heat to the water during autumn and winter (Birge et al. 1927, Hutchinson 1957). 
Kirillin et al., 2012 explained the insulation of the lake by snow cover from the solar radiation and the release of summer-accumulated heat from the sediment, which serves as the main driver for circulation and mixing as a winter I stage characteristic. The heat flux from sediments to water was the main source for the lake water heating during early and mid-winter, being depth-dependent and 1-4.5 W m-2 in early winter, and 0.5-3 W m-2 in late winter (Malm et al.1997).
Winter II’’ replaces Winter I when thermal equilibrium is established between the water column and the sediment and the snow cover melts, allowing radiation to penetrate through the ice cover.The heating of the upper water column and the subsequent sinking of warmer and heavier waters produce convection, which takes place in the background of stable density stratification, such that the convectively mixed layer of uniform temperature/density thickens with time and penetrates into the stably stratified fluid below. Convective mixing due to solar heating dominates the circulation during the Winter II.
# Study Scenarios
## 1)The impacts of lateral boundaries and depth
The lake water will be initially at rest and linearly stratified, with T = 0 ◦C at the surface and T = Tmd (the Temperature of Maximum Density) at the maximum depth. The effect of lateral boundary will consider in under ice circulations.
## 2)The impacts of summer heat storage in sediment 
## 3)The impacts of solar radiation penetration
## 4)The impacts of salinity gradients and river runnoff 

**Regional Ocean Modeling System (ROMS)**

ROMS is a free-surface, terrain-following, primitive equations ocean model widely used by the scientific community for a diverse range
of applications (e.g., Haidvogel et al., 2000; Marchesiello et al., 2003; Peliz et al., 2003; Di Lorenzo, 2003; Dinniman et al.,
2003; Budgell, 2005; Warner et al., 2005a, b; Wilkin et al., 2005).There are Wide range of advection schemes: (e.g. 3rd-order upstream-biased, 4th-order), Wide range of open boundary conditions: (e.g. Radiation, clamped, nudged), Wide range of vertical mixing schemes (k-epsilon, k-omega, MY2.5, KPP, GLS), Wide Range of realistic Applications and test cases (Haidvogel et al., 2000; Marchesiello et al., 2003; Peliz et al., 2003; Di Lorenzo, 2003; Dinniman et al., 2003; Budgell, 2005; Warner et al., 2005a, b; Wilkin et al., 2005)


*see: https://www.myroms.org/wiki/Getting_Started, https://www.myroms.org/wiki/Git, and https://www.myroms.org/wiki/ROMS_git)*
