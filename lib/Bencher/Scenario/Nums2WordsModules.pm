package Bencher::Scenario::Nums2WordsModules;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark various number-to-words modules '.
        'of different languages against one another',
    participants => [
        {
            fcall_template => 'Lingua::ID::Nums2Words::nums2words(<num>)',
        },
        {
            fcall_template => 'Lingua::FR::Numbers::number_to_fr(<num>)',
        },
        {
            fcall_template => 'Lingua::EN::Numbers::num2en(<num>)',
        },
    ],
    datasets => [
        {args=>{num=>1}},
        {args=>{num=>123}},
        {args=>{num=>123_456_789}},
    ],
};

1;
# ABSTRACT:
