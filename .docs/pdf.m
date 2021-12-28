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
%%          disp
%%          fprintf
%%          system
%%
%%%%
%%
%%      FILE
%%          pdf.m
%%
%%      BRIEF
%%          Compile the repository manual.
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
LISTER  = 'cat';
PANDOC  = 'pandoc';

% File types.
YAML    = '*.yaml';

% Concrete files.
CONTRIBUTING    = '../CONTRIBUTING.md';
LICENSE         = '../LICENSE';
LSTART          = './license_begin.md';
LSTOP           = './license_end.md';
NEWPAGE         = './newpage.md';
PDF             = './documentation.pdf';
README          = '../README.md';
SOFTWARE        = './software_requirements.md';

% Software flags.
FLAGS.PANDOC    = [' -N -o ' PDF];



%%%%
%%
%% Build steps.
%%
%%%%

% Information banner.
fprintf ('%%%%%%%% Begin documentation compilation. %%%%%%%%\n\n');



% Compile the documentation.
fprintf ('Compile repository manual ... ');

sections.contributing   = [CONTRIBUTING ' ' NEWPAGE];
sections.header         = [YAML ' ' NEWPAGE];
sections.license        = [LSTART ' ' LICENSE ' ' LSTOP ' ' NEWPAGE];
sections.readme         = [README ' ' NEWPAGE];
sections.software       = [SOFTWARE ' ' NEWPAGE];

content = [         sections.header         ' '];
content = [content  sections.readme         ' '];
content = [content  sections.software       ' '];
content = [content  sections.contributing   ' '];
content = [content  sections.license        ' '];

system ([LISTER ' ' content ' | ' PANDOC FLAGS.PANDOC]);

disp ('Done.');



% Leave the script.
fprintf ('\n%%%%%%%% End documentation compilation. %%%%%%%%\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
