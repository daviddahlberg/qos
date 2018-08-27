# Copyright (c) 2015-2018 David Dahlberg <dyn+code@dahlberg.cologne>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

PREFIX   = /usr/local
BINDIR   = $(PREFIX)/bin
SHAREDIR = $(PREFIX)/share
MANDIR   = $(PREFIX)/man

all:
	mandoc -Wall,stop -Tutf8 qos.1 > README

install:
	install -D -m 755 qos $(BINDIR)
	install -D -m 644 qos.1 $(MANDIR)/man1

uninstall:
	rm -rf $(BINDIR)/qos $(MANDIR)/man1/qos

test:
	mandoc -Wall,stop -Tlint qos.1
	@echo success 
