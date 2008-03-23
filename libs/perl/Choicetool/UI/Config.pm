#
# Config.pm
#
# Copyright (C) 2007, 2008 Francesco Salvestrini
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

package Choicetool::UI::Config;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;

sub new ($)
{
    my $class = shift;

    assert(defined($class));

    my $self = { };

    return bless($self, $class);
}

sub symbol {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{SYMBOL} = $value;
    }

    return $self->{SYMBOL};
}

sub m4ify ($) {
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));

    $string = "";

    return $string;
}

1;
