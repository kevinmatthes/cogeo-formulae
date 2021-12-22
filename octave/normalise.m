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
%% -- V = normalise (X)
%%      Normalise a vector.
%%
%%      PARAMETERS
%%          X
%%              The vector to normalise.  In case it is either not a vector but
%%              a matrix or its norm equals zero, NaN will be returned.
%%
%%              In case that no value for X is passed to the function, NaN is
%%              assumed.
%%
%%      RETURN
%%          V
%%              The normalised vector.
%%
%%              In case that no parameter or more than one is given, NaN will be
%%              returned.
%%
%%      SEE ALSO
%%          NaN
%%          min
%%          nargin
%%          norm
%%          size
%%
%%%%
%%
%%      FILE
%%          normalise.m
%%
%%      BRIEF
%%          Normalise a vector.
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

function V = normalise (X = NaN);
    if nargin == 1 && min (size (X)) == 1 && norm (X) ~= 0;
        V = X / norm (X);
    else;
        V = NaN;
    end;

    return;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
