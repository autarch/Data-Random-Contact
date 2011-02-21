package Data::Random::Contact;

use namespace::autoclean;

use Moose;

use Class::Load qw( load_class );
use Data::Random::Contact::Language::EN;
use Data::Random::Contact::Country::US;
use Data::Random::Contact::Types qw( Country Language );
use DateTime;
use Scalar::Util qw( blessed );

has language => (
    is      => 'ro',
    isa     => Language,
    default => 'Data::Random::Contact::Language::EN',
);

has country => (
    is      => 'ro',
    isa     => Country,
    default => 'Data::Random::Contact::Country::US',
);

override BUILDARGS => sub {
    my $class = shift;
    my $p     = super();

    if ( $p->{language} && !blessed $p->{language} ) {
        my $language
            = $p->{language} =~ /^Data::Random::Contact::Language::/
            ? $p->{language}
            : 'Data::Random::Contact::Language::' . $p->{language};

        load_class($language);

        $p->{language} = $language;
    }

    if ( $p->{country} && !blessed $p->{country} ) {
        my $country
            = $p->{country}
            && $p->{country} =~ /^Data::Random::Contact::Country::/
            ? $p->{country}
            : 'Data::Random::Contact::Country::' . $p->{country};

        load_class($country);

        $p->{country} = $country;
    }
    return $p;
};

my $MaxBirthdate = DateTime->today()->subtract( years => 15 );
my $MinBirthdate = DateTime->today()->subtract( years => 100 );
my $Days = $MaxBirthdate->delta_days($MinBirthdate)->in_units('days') - 1;

my $Suffix = 0;

sub person {
    my $self = shift;

    my %contact;

    $contact{gender} = _percent() <= 50 ? 'male' : 'female';

    my $salutation_meth = $contact{gender} . '_salutation';

    $contact{salutation} = $self->language()->$salutation_meth();

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

    my $suffix_meth = $contact{gender} . '_suffix';

    $contact{suffix} = $self->language()->$suffix_meth();

    $contact{birth_date}
        = $MinBirthdate->clone()->add( days => int( rand($Days) ) );

    for my $type (qw( cell home work )) {
        $contact{phone}{$type} = $self->country()->phone_number();
    }

    for my $type (qw( home work )) {
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

sub household {
    my $self = shift;

    my %contact;

    $contact{name} = $self->language()->household_name();

    $contact{phone}{home} = $self->country()->phone_number();

    $contact{address}{home} = $self->country()->address();

    ( $contact{email}{home} = $contact{name} ) =~ s/ /./;
    $contact{email}{home} .= '@' . $self->_domain();

    return \%contact;
}

sub organization {
    my $self = shift;

    my %contact;

    $contact{name} = $self->language()->organization_name();

    $contact{phone}{office} = $self->country()->phone_number();

    for my $type (qw( headquarters branch )) {
        $contact{address}{$type} = $self->country()->address();
    }

    ( $contact{email}{home} = $contact{name} ) =~ s/\W/./g;
    $contact{email}{home} .= '@' . $self->_domain();

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
