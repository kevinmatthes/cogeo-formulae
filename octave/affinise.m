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
%% -- V = affinise (X)
%%      Reduce the dimension of a vector.
%%
%%      PARAMETERS
%%          X
%%              The vector to reduce the dimension of.  In case it is not a
%%              vector but a matrix, NaN will be returned.
%%
%%              In case that no value for X is passed to the function, NaN is
%%              assumed.
%%
%%      RETURN
%%          V
%%              The vector with the reduced dimension.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.
%%
%%      SEE ALSO
%%          NaN
%%          homogenise
%%
%%%%
%%
%%      FILE
%%          affinise.m
%%
%%      BRIEF
%%          Reduce the dimension of a vector.
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

function V = affinise (X = NaN);
    V = NaN;
    l = NaN;

    valid.X = ~ isnan (X) && isnumeric (X) && min (size (X)) == 1;

    if valid.X && nargin == 1;
        l = length (X);
    end;

    if l == 1;
        V = [];
    elseif l > 1;
        V = X(1 : l - 1) / X(l);
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
