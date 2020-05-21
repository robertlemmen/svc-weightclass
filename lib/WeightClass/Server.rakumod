use Cro::HTTP::Router;
use Cro::HTTP::Server;

use WeightClass::Logging;

unit class WeightClass::Server;

has $.port;
has $.user-router;
has $!http-service;

my $log = WeightClass::Logging.new('server');

method start() {
    my $top-router = route {
        include 'api/weightclass/v1/user' => $!user-router.api-routes;
    };

    $!http-service = Cro::HTTP::Server.new(
        :host('localhost'), :port($!port), :application($top-router));
    $!http-service.start;

    $log.debug("HTTP server listening on port $!port");
}

method stop() {
    $!http-service.stop;
}
