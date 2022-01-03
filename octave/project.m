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
%% -- P = project (V, N)
%%      Project the vector V onto the plane with the normal N.
%%
%%      PARAMETERS
%%          V
%%              The vector to project onto the plane.  In case it is not a
%%              vector but a matrix, NaN will be returned.
%%
%%              In case that no value for V is passed to the function, NaN is
%%              assumed.
%%
%%          N
%%              The normal of the plane to project on.  In case it is not a
%%              vector but a matrix, NaN will be returned.
%%
%%              In case that no value for N is passed to the function, NaN is
%%              assumed.
%%
%%      RETURN
%%          P
%%              The projected vector.
%%
%%              In case that no parameter or more than two are given, NaN will
%%              be returned.
%%
%%      SEE ALSO
%%          NaN
%%
%%%%
%%
%%      FILE
%%          project.m
%%
%%      BRIEF
%%          Project a vector onto a plane.
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

function P = project (V = NaN, N = NaN);
    P = NaN;
    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
