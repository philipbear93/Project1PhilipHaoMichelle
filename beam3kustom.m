function out=beam3kustom(mode,b,c,d,e)
%beam3kustom is a top level "wrapper" function that evaluates the necessary
%lower level functions to generate and build a 3-D Euler-Bernoulli
%beam/rod/torsion rod that is  linearly tapered for use in WFEM
%   mode allows selection of internal routines
%   b, c, d, and e are control variables
%   Beam properties (bprops) are in the order
%   bprops=[E G rho A1 A2 A3 J1 J2 J3 Ixx1 Ixx2 Ixx3 Iyy1 Iyy2 Iyy3]
%   Third node is in the middle.
%   Fourth "node" defines the beam y plane and is actually from the
%   points array.

% Defining beam element properties in wfem input file:
% element properties
%   E G rho A1 A2 J1 J2 Izz1 Izz2 Iyy1 Iyy2 
% Torsional rigidity, $J$, must be less than or equal
% to $Iyy+Izz$ at any given cross section.  

global ismatnewer
global K
global Ks
global M
global nodes % Node locations
global elprops
global element
global points
global Fepsn % Initial strain "forces". 
global lines
global restart
global reload
global curlineno
global DoverL
global surfs

out=0;

% Find number of nodes
if strcmp(mode,'numofnodes')
    out=3;
end

%


end

