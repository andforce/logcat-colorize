#
# File:      Makefile
#
# Purpose:   Ease compiling pain!
#
# Author:    BRAGA, Bruno <bruno.braga@gmail.com>
#
# Copyright:
#            Licensed under the Apache License, Version 2.0 (the "License");
#            you may not use this file except in compliance with the License.
#            You may obtain a copy of the License at
#
#            http://www.apache.org/licenses/LICENSE-2.0
#
#            Unless required by applicable law or agreed to in writing, software
#            distributed under the License is distributed on an "AS IS" BASIS,
#            WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#            implied. See the License for the specific language governing
#            permissions and limitations under the License.
#
# Notes:     
#            Bugs, issues and requests are welcome at:
#            https://bitbucket.org/brunobraga/logcat-colorize/issues
#

CC=g++
CFLAGS=-lboost_regex -lboost_program_options -std=c++0x
EXEC=logcat-colorize
DEPS=logcat-colorize.cpp
BINDIR=/usr/local/bin

$(EXEC): $(DEPS)
	$(CC) $(DEPS) -o $(EXEC) $(CFLAGS)

clean:
	rm -f $(EXEC)

install: $(EXEC)
	@mkdir -p $(DESTDIR)$(BINDIR)
	install -m 0755 $(EXEC) $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(EXEC)

