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
%% -- V = homogenise (X)
%%      Increase the dimension of a vector.
%%
%%      PARAMETERS
%%          X
%%              The vector to increase the dimension of.  In case it is not a
%%              vector but a matrix, NaN will be returned.
%%
%%              In case that no value for X is passed to the function, NaN is
%%              assumed.  In case X is an empty vector, 1 will be returned.
%%
%%      RETURN
%%          V
%%              The vector with the increased dimension.
%%
%%              In case that no parameter is given, 1 will be returned.  In case
%%              more than one is given, NaN will be returned.
%%
%%      SEE ALSO
%%          NaN
%%          affinise
%%
%%%%
%%
%%      FILE
%%          homogenise.m
%%
%%      BRIEF
%%          Increase the dimension of a vector.
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

function V = homogenise (X = NaN);
    V = NaN;
    d = NaN;

    valid.X = size (X) == [0 0] || isnumeric (X) && ~ isnan (X);

    if valid.X;
        switch min (size (X));
            case 0;
                V = 1;

            case 1;
                V = [X 1];
        end;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
