use WeightClass::Logging;

unit class WeightClass::User::Service;

has $.user-repo;

my $log = WeightClass::Logging.new('user-service');
