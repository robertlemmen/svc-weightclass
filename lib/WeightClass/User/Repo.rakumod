use WeightClass::Logging;

unit class WeightClass::User::Repo;

has $.dbh;

my $log = WeightClass::Logging.new('user-repo');


