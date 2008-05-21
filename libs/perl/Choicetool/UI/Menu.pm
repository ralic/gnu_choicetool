#
# Menu.pm
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

package Choicetool::UI::Menu;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;
use Choicetool::UI::UI;

use vars qw(@ISA);
@ISA = qw(Choicetool::UI::UI);

sub new ($)
{
    my $class = shift;
    my $id    = shift;

    assert(defined($class));

    my $self = $class->SUPER::new($id);

    $self->{TYPE}    = undef;
    $self->{TITLE}   = undef;
    $self->{DEFAULT} = undef;
    $self->{RANGE}   = undef;
    $self->{HELP}    = undef;

    return bless($self, $class);
}

sub type {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{TYPE} = $value;
    }

    return $self->{TYPE};
}

sub title {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{TITLE} = $value;
    }

    return $self->{TITLE};
}

sub default {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{DEFAULT} = $value;
    }

    return $self->{DEFAULT};
}

sub range {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{RANGE} = $value;
    }

    return $self->{RANGE};
}

sub help {
    my $self  = shift;
    my $value = shift;

    assert(defined($self));

    if (defined($value)) {
	$self->{HELP} = $value;
    }

    return $self->{HELP};
}

sub m4ify_indent ($) {
    my $self = shift;

    assert(defined($self));

    return "  ";
		  }

sub m4ify_header ($$) {
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));
    assert(defined($self->{ID}));
    assert(defined($self->{TITLE}));

    return
	$prefix . "_CT_UI_MENU_BEGIN([".
	$self->{ID}    . "],[" .
	$self->{TITLE} .
	"])\n";
}

sub m4ify_footer ($$) {
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));
    assert(defined($self->{TITLE}));

    return $prefix . "_CT_UI_MENU_END([])\n";
}

1;
