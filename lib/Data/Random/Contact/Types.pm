package Data::Random::Contact::Types;

use strict;
use warnings;
use namespace::autoclean;

use base 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    qw(
        MooseX::Types::Moose
        Data::Random::Contact::Types::Internal
        )
);

1;
