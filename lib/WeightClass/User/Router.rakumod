use Cro::HTTP::Router;
use Cro::HTTP::Server;

use WeightClass::Logging;

unit class WeightClass::User::Router;

has $.user-service;

method api-routes() {
    route {
        post -> 'sign-up' {
            ...
        }
        post -> 'log-in' {
            ...
        }
        get -> 'info' {
            ...
        }
    }
}
