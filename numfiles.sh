#! /bin/bash

# Pedantic & Lazy Bash Scripts (C) 2020-2021 Jyothiraditya Nellakra

# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later 
# version.

# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.

# You should have received a copy of the GNU General Public License along with
# this program. If not, see <https://www.gnu.org/licenses/>.

new_name() { printf "%0$zeros""d - %s" "$count" "$i"; }

count="1"
zeros="$(echo -n "$#" | wc -c)"

if [ "$zeros" -le "2" ]; then zeros="2"; fi
for i in "$@"; do (set -x; mv "$i" "$(new_name)"); (( count++ )); done
