use strict;
use warnings;
use Test::More;
use Text::LTSV::Lite;

{
    my %hash = ltsv2hash("hoge:fuga\tfoo:bar\ttime:2013-12-24T12:12:12\n");

    is $hash{hoge} => 'fuga';
    is $hash{foo}  => 'bar';
    is $hash{time} => '2013-12-24T12:12:12';
}

done_testing;
