# -*- perl -*-

#
# UnaryOp.pm
#
# Copyright (C) 2008, 2009 Francesco Salvestrini
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

package Choicetool::Rules::UnaryOp;

use 5.8.0;

use warnings;
use strict;
use diagnostics;

use Choicetool::Base::Debug;
use Choicetool::Base::Trace;

use vars qw(@ISA);
@ISA = qw(Choicetool::Rules::Rule);

sub new ($$)
{
    my $class = shift;

    assert(defined($class));

    my $self = { };

    $self->{OPERAND} = undef;

    return bless($self, $class);
}

sub operand ($$)
{
    my $self = shift;
    my $oper = shift;

    assert(defined($self));

    if (defined($oper)) {
        $self->{OPERAND} = $oper;
    }

    return $self->{OPERAND};
}

sub m4ify_header ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));
    assert(defined($self->id()));

    return $prefix . "\n";
}

sub m4ify_footer ($$)
{
    my $self   = shift;
    my $prefix = shift;

    assert(defined($self));
    assert(defined($prefix));
    assert(defined($self->id()));

    return $prefix . "\n";
}

1;
