##
#
# makefile : build instructions for the project.
#
# See `LICENSE' for full license.
# See `README.md' for project details.
#
##

##
#
# Copyright (C) 2021 Kevin Matthes
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
##

################################################################################

##
#
# Variables.
#
##

# Software.
COPY	:= cp
OCTAVE	:= octave-cli
REMOVE	:= rm

# Make directories.
MDOCS	:= -C ./.docs/
MOCT	:= -C ./octave/

# Concrete files.
INSTALLER	:= ./install_cogeo_formulae.m
PDF			:= ./.docs/documentation.pdf
UNINSTALLER	:= ./uninstall_cogeo_formulae.m



##
#
# Build instructions.
#
##

.PHONY: default install manual pdf tidy uninstall

default: install

install:
	cd ./octave/ ; $(OCTAVE) $(INSTALLER)

manual: $(PDF)
	$(COPY) $(PDF) ./cogeo-formulae.pdf

pdf: $(PDF)

$(PDF):
	make $(MDOCS) default

tidy: manual
	make $(MDOCS) tidy
	$(REMOVE) $(wildcard ./*.pdf)

uninstall:
	cd ./octave/ ; $(OCTAVE) $(UNINSTALLER)

################################################################################
