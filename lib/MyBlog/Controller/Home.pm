package MyBlog::Controller::Home;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub signin{
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render;
}

sub logout {

}

sub index {

}

1;

