#!/usr/bin/perl
#
# DW::Task
#
# Base class for asynchronously executed tasks.
#
# Authors:
#     Mark Smith <mark@dreamwidth.org>
#
# Copyright (c) 2019 by Dreamwidth Studios, LLC.
#
# This program is free software; you may redistribute it and/or modify it under
# the same terms as Perl itself.  For a copy of the license, please reference
# 'perldoc perlartistic' or 'perldoc perlgpl'.
#

package DW::Task;

use strict;
use v5.10;
use Log::Log4perl;
my $log = Log::Log4perl->get_logger(__PACKAGE__);

use constant COMPLETED => 100;
use constant FAILED    => 101;

sub new {
    my ( $class, @args ) = @_;

    my $self = { args => \@args, };
    return bless $self, $class;
}

sub args {
    my $self = $_[0];

    return $self->{args};
}

1;
