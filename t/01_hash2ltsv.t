use strict;
use warnings;
use Test::More;
use Text::LTSV::Lite;

{
    my $ltsv = hash2ltsv(hoge => "fuga",foo => "bar");
    is $ltsv => "hoge:fuga\tfoo:bar";
}

done_testing;
