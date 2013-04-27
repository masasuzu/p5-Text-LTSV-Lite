package Text::LTSV::Lite;
use strict;
use warnings;
use base qw( Exporter::Lite );
our $VERSION = '0.01';
our @EXPORT  = qw( ltsv2hash hash2ltsv );

sub hash2ltsv {
    my (@hash_kvs) = @_;

    my $length = scalar @hash_kvs;
    my @joind_kvs;
    for (my $i = 0; $i < $length; $i += 2) {
        push @joind_kvs, join(':', $hash_kvs[$i], $hash_kvs[$i+1]);
    }
    return join "\t", @joind_kvs;
}

sub ltsv2hash {
    my ($ltsv) = @_;
    chomp $ltsv;
    my %hash;
    for my $kv (split "\t", $ltsv) {
        my ($key, $value) = split ':', $kv, 2;
        $hash{$key} = $value;
    }
    return %hash;
}


1;
__END__

=head1 NAME

Text::LTSV::Lite - LTSV manipulator

=head1 SYNOPSIS

  use Text::LTSV::Lite;

  %hashed_ltsv = ltsv2hash($ltsv_string);
  $ltsv_string = hash2ltsv(%hashed_ltsv);

=head1 DESCRIPTION

use Text::LTSV except people who cannot use Text::LTSV for some reason.
eg) cannot upgrade dependencies...

=head1 AUTHOR

SUZUKI Masashi E<lt>m15.suzuki.masashi {at} gmail.comE<gt>

=head1 SEE ALSO

Text::LTSV

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
