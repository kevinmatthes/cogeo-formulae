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
%%          delete
%%          disp
%%          fprintf
%%          rmdir
%%          rmpath
%%          savepath
%%
%%%%
%%
%%      FILE
%%          uninstall.m
%%
%%      BRIEF
%%          Uninstall the Computer Geometry formulas.
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

% Installation information.
INSTALLDIR  = '~/octave/cogeo-formulae';
OCTDIR      = '~/octave';
PATH        = '~/.octaverc';



%%%%
%%
%% Build steps.
%%
%%%%

% Information banner.
fprintf ('%%%%%%%% Begin uninstallation. %%%%%%%%\n\n');



% Delete the installation directory and its whole content.
fprintf ('Remove installation directory with all contents ... ');
delete ([INSTALLDIR '/*']);
rmdir  (INSTALLDIR);
disp ('Done.');



% Add the installation path to Octave.
fprintf ('Update path information ... ');
rmpath (INSTALLDIR);
savepath (PATH);
disp ('Done.');



% Leave the script.
fprintf ('\n%%%%%%%% End uninstallation. %%%%%%%%\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
