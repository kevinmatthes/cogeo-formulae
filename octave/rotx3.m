%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Copyright (C) 2021 Kevin Matthes
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
%% -- R = rotx3 (phi)
%%      Determine the homogenous rotation matrix for a rotation around the x
%%      axis by the angle phi in a 3D space, measured in radians.
%%
%%      PARAMETERS
%%          phi
%%              The angle to rotate by.  Measured in radians.
%%
%%              In case that no value for phi is passed to the function, NaN is
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
%%          cos
%%          length
%%          nargin
%%          sin
%%          sparse
%%
%%%%
%%
%%      FILE
%%          rotx3.m
%%
%%      BRIEF
%%          Create the homogenous rotation matrix for a rotation around the x
%%          axis in a 3D space.
%%
%%      AUTHOR
%%          Kevin Matthes
%%
%%      COPYRIGHT
%%          (C) 2021 Kevin Matthes.
%%          This file is licensed GPL 2 as of June 1991.
%%
%%      DATE
%%          2021
%%
%%      NOTE
%%          See `LICENSE' for full license.
%%          See `README.md' for project details.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function R = rotx3 (phi = NaN);
    if nargin == 1 && length (phi) == 1;
        c = cos (phi);
        s = sin (phi);

        R = sparse ([1 0 0 0; 0 c -s 0; 0 s c 0; 0 0 0 1]);
    else;
        R = NaN;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
