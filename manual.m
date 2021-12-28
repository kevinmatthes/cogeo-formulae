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
%%      SEE ALSO
%%          cd
%%          copyfile
%%          disp
%%          fprintf
%%          system
%%
%%%%
%%
%%      FILE
%%          manual.m
%%
%%      BRIEF
%%          Compile the manual for the Computer Geometry formulas.
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

%%%%
%%
%% Variables.
%%
%%%%

% Software.
OCTAVE  = 'octave-cli';

% Concrete files.
DOCUMENTATION   = './.docs/documentation.pdf';
PDF             = './cogeo-formulae.pdf';



%%%%
%%
%% Build steps.
%%
%%%%

% Information banner.
fprintf ('%%%%%%%% Begin manual compilation. %%%%%%%%\n\n');



% Compile the repository manual.
disp (['Compile repository manual ' PDF ' ... ']);
cd ('./.docs/');
system ([OCTAVE ' ./pdf.m']);
cd ('../');
copyfile (DOCUMENTATION, PDF, 'f');
disp ('Done.');



% Leave the script.
fprintf ('\n%%%%%%%% End manual compilation. %%%%%%%%\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
