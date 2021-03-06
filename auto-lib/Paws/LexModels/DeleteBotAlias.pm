
package Paws::LexModels::DeleteBotAlias;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteBotAlias - Arguments for method DeleteBotAlias on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBotAlias on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method DeleteBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBotAlias.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    $models . lex->DeleteBotAlias(
      BotName => 'MyBotName',
      Name    => 'MyAliasName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/lex/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot that the alias points to.



=head2 B<REQUIRED> Name => Str

The name of the alias to delete. The name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBotAlias in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

