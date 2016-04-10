
package Paws::DS::DeleteConditionalForwarder;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RemoteDomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConditionalForwarder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DeleteConditionalForwarderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteConditionalForwarder - Arguments for method DeleteConditionalForwarder on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConditionalForwarder on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method DeleteConditionalForwarder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConditionalForwarder.

As an example:

  $service_obj->DeleteConditionalForwarder(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The directory ID for which you are deleting the conditional forwarder.



=head2 B<REQUIRED> RemoteDomainName => Str

The fully qualified domain name (FQDN) of the remote domain with which
you are deleting the conditional forwarder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConditionalForwarder in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

