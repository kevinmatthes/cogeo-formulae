%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Copyright (C) 2021─2022 Kevin Matthes
%%
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License along
%% with this program; if not, write to the Free Software Foundation, Inc.,
%% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%%
%%%%
%%
%% -- R = rot3zd (PHI)
%%      Determine the homogenous rotation matrix for a rotation around the z
%%      axis by the angle PHI in a 3D space, measured in degrees.
%%
%%      PARAMETERS
%%          PHI
%%              The angle to rotate by.  Measured in degrees.
%%
%%              In case that no value for PHI is passed to the function, NaN is
%%              assumed.
%%
%%      RETURN
%%          R
%%              The sparse rotation matrix.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.
%%
%%      SEE ALSO
%%          NaN
%%          move
%%          project
%%          rot3
%%          rot3d
%%          rot3x
%%          rot3xd
%%          rot3y
%%          rot3yd
%%          rot3z
%%
%%%%
%%
%%      FILE
%%          rot3zd.m
%%
%%      BRIEF
%%          Create the homogenous rotation matrix for a rotation around the z
%%          axis in a 3D space.
%%
%%      AUTHOR
%%          Kevin Matthes
%%
%%      COPYRIGHT
%%          (C) 2021─2022 Kevin Matthes.
%%          This file is licensed GPL 2 as of June 1991.
%%
%%      DATE
%%          2021─2022
%%
%%      NOTE
%%          See `LICENSE' for full license.
%%          See `README.md' for project details.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function R = rot3zd (PHI = NaN);
    R = NaN;
    
    valid.PHI = isnumeric (PHI) && ~ isnan (PHI) && size (PHI) == [1 1];

    if valid.PHI && nargin == 1;
        R = rot3d (PHI, [0 0 1]);
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
