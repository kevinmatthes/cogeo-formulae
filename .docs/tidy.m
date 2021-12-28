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
%%          system
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
fprintf ('%%%%%%%% Begin documentation clean-up. %%%%%%%%\n\n');

% Determine the operating system.
fprintf ('Determine OS: ');
if isunix;
    UNIXCMDS = 1;
    disp ('UNIX.');
elseif ispc;
    disp ('Windows.');
end;

% Check for files to delete.
if UNIXCMDS;
    disp ('Check for documentation artifacts to remove ...');
    PDFTODELETE = ~ unix ('test -e *.pdf');

    if PDFTODELETE;
        disp ('PDF artifacts found!');
    else;
        disp ('No PDF artifacts found.');
    end;
end;

% Remove all artifacts.
if PDFTODELETE;
    delete ('*.pdf');
    disp ('PDF artifacts removed.');
end;

% Leave the script.
fprintf ('\n%%%%%%%% End documentation clean-up. %%%%%%%%\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
