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
%% -- M = move (X)
%%      Determine the homogenous translation matrix from the given vector X.
%%
%%      PARAMETERS
%%          X
%%              The vector to translate by.
%%
%%              In case that no value for X is passed to the function, NaN is
%%              assumed.
%%
%%      RETURN
%%          M
%%              The sparse translation matrix.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.
%%
%%      SEE ALSO
%%          isnumeric
%%          diag
%%          length
%%          nargin
%%          sparse
%%
%%%%
%%
%%      FILE
%%          move.m
%%
%%      BRIEF
%%          Create the homogenous translation matrix from a given vector.
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

function M = move (X = NaN);
    M = NaN;

    if nargin == 1 && isnumeric (X);
        d = [];
        l = length (X);

        for n = 1 : l + 1;
            d = [d 1];
        end;

        M = diag (d);

        for n = 1 : l;
            M(n, l + 1) = X(n);
        end;

        M = sparse (M);
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
