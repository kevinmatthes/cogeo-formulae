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
%% -- R = rot3 (PHI, X)
%%      Determine the homogenous rotation matrix for a rotation around a custom
%%      axis X by the angle PHI in a 3D space, measured in radians.
%%
%%      PARAMETERS
%%          PHI
%%              The angle to rotate by.  Measured in radians.
%%
%%              In case that no value for PHI is passed to the function, NaN is
%%              assumed.
%%
%%          X
%%              The axis to rotate around, given by its direction vector.  Needs
%%              to contain the point of origin.
%%
%%              In case that no value for X is passed to the function, [1 1 1]
%%              is assumed.
%%
%%      RETURN
%%          R
%%              The sparse rotation matrix.
%%
%%              In case that no parameter or more than two are given, NaN will
%%              be returned.
%%
%%      SEE ALSO
%%          NaN
%%          move
%%          project
%%          rot3d
%%          rot3x
%%          rot3xd
%%          rot3y
%%          rot3yd
%%          rot3z
%%          rot3zd
%%
%%%%
%%
%%      FILE
%%          rot3.m
%%
%%      BRIEF
%%          Create the homogenous rotation matrix for a rotation around a custom
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

function R = rot3 (PHI = NaN, X = [1 1 1]);
    R   = NaN;

    valid.PHI   =   isnumeric (PHI)
                &&  ~ isnan (PHI)
                &&  size (PHI) == [1 1];
    valid.X     =   isnumeric (X)
                &&  ~ isnan (X)
                &&  min (size (X)) == 1
                &&  length (X) == 3;

    if valid.PHI && valid.X;
        c   = cos (PHI);
        ic  = 1 - c;
        s   = sin (PHI);
        x   = X(1);
        y   = X(2);
        z   = X(3);

        R = sparse ([   c+ic*x^2    ic*x*y-s*z  ic*x*z+s*y  0
                    ;   ic*x*y+s*z  c+ic*y^2    ic*y*z-s*x  0
                    ;   ic*x*z-s*y  ic*y*z+s*x  c+ic*z^2    0
                    ;   0           0           0           1
                    ]);
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
