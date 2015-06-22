package MyBlog;
use Modern::Perl;
use Data::Dumper;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # passphrase is used by HMAC-SHA1 algorithm to make signed cookies secure
  $self->secrets(['Yan Xueqing blog']);

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/signin')->to('Home#signin')->name('signin');
  $r->get('/logout')->to('Home#logout')->name('logout');
  $r->get('/index')->to(template=>'layouts/a')->name('index');
  $r->get('default')->to(template=>'layouts/default');
  say Dumper $self->static->paths;
  say Dumper $self->static->classes;
  say Dumper $self->renderer->paths;
  say Dumper $self->renderer->classes;
}
1;
