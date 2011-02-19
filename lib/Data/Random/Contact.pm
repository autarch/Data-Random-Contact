package Data::Random::Contact;

use namespace::autoclean;

use Moose;

use Data::Random::Contact::Language::EN;
use Data::Random::Contact::Country::US;
use Data::Random::Contact::Types qw( Country Language );

has language => (
    is      => 'ro',
    isa     => Language,
    default => sub { Data::Random::Contact::Language::EN->new() },
);

has country => (
    is      => 'ro',
    isa     => Country,
    default => sub { Data::Random::Contact::Country::US->new() },
);

override BUILDARGS => sub {
    my $class = shift;
    my $p     = super();

    my $language
        = $p->{language} =~ /^Data::Random::Contact::Language::/
        ? $p->{language}
        : 'Data::Random::Contact::Language::' . $p->{language};

    load_class($language);

    $p->{language} = $language->new();

    my $country
        = $p->{country} =~ /^Data::Random::Contact::Country::/
        ? $p->{country}
        : 'Data::Random::Contact::Country::' . $p->{country};

    load_class($country);

    $p->{country} = $country->new();

    return $p;
};

my $Suffix = 0;

sub person {
    my $self = shift;

    my %contact;

    $contact{gender} = _percent() <= 50 ? 'male' : 'female';

    my $name_meth = $contact{gender} . '_name';

    $contact{given} = $self->language()->$name_meth();

    my $middle_p = _percent();
    if ( $middle_p <= 25 ) {
        $contact{middle} = $self->language()->$name_meth();
    }
    elsif ( $middle_p <= 75 ) {
        $contact{middle} = substr( $self->language()->$name_meth(), 0, 1 );
    }

    $contact{surname} = $self->language()->surname();

    for my $type (qw( cell home office )) {
        $contact{phone}{$type} = $self->country()->phone_number();
    }

    for my $type (qw( home office )) {
        $contact{address}{$type} = $self->country()->address();
    }

    $contact{email}{home}
        = join '.',
        map {lc} grep {defined} @contact{ 'given', 'middle', 'surname' };
    $contact{email}{home} .= '@' . $self->_domain();

    $contact{email}{work} = lc $contact{given} . $Suffix++;
    $contact{email}{work} .= '@' . $self->_domain();

    return \%contact;
}

{

    # Fake Name Generator uses these domains, so I assume they're safe.
    my @Domains = qw(
        pookmail.com
        trashymail.com
        dodgit.com
        mailinator.com
        spambob.com
    );

    sub _domain {
        return @Domains[ int( rand( scalar @Domains ) ) ];
    }
}

sub _percent {
    return ( int( rand(100) ) ) + 1;
}

__PACKAGE__->meta()->make_immutable();

1;
