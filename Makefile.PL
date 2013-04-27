use inc::Module::Install;
name 'Text-LTSV-Lite';
all_from 'lib/Text/LTSV/Lite.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
