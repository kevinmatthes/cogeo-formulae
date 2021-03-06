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
%%          delete
%%          disp
%%          fprintf
%%          ispc
%%          isunix
%%          system
%%          unix
%%
%%%%
%%
%%      FILE
%%          tidy.m
%%
%%      BRIEF
%%          Clean the repository.
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

% System information.
UNIXCMDS    = 0;

% Control variables.
PDFTODELETE = 0;



%%%%
%%
%% Build steps.
%%
%%%%

% Information banner.
fprintf ('%%%%%%%% Begin repository clean-up. %%%%%%%%\n\n');



% Determine the operating system.
fprintf ('Determine OS: ');

if isunix;
    UNIXCMDS = 1;
    disp ('UNIX.');
elseif ispc;
    disp ('Windows.');
end;



% Remove any documentation artifacts.
disp ('Clean-up documentation artifacts ...');
cd ('./.docs/');
system ([OCTAVE ' ./tidy.m']);
cd ('../');



% Check for files to delete.
disp ('Check for documentation artifacts to remove ...');

if UNIXCMDS;
    PDFTODELETE = ~ unix ('test -e *.pdf');
end;

fprintf ('PDF: ');
if PDFTODELETE;
    delete ('*.pdf');
    disp ('found and removed.');
else;
    disp ('none.');
end;



% Leave the script.
fprintf ('\n%%%%%%%% End repository clean-up. %%%%%%%%\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
