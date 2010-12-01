#!/bin/bash
#
# Copyright 2010 Arturo Díaz-Almagro
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
#
# You should have received a copy of the GNU General Public License
# along with dropbox.py.  If not, see <http://www.gnu.org/licenses/>.
#


#
# Recursively add a .gitignore file to all directories 
# in the working directory which are empty and don't
# start with a dot.  Helpful for tracking empty dirs
# in a git repository.

for i in $(find . -type d -regex ``./[^.].*'' -empty); do touch $i"/.gitignore"; done;
