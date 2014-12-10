
package Paws::IAM::ListServerCertificates {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListServerCertificatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListServerCertificatesResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListServerCertificates - Arguments for method ListServerCertificates on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServerCertificates on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method ListServerCertificates.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListServerCertificates.

As an example:

  $service_obj->ListServerCertificates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Marker => Str

  

Use this only when paginating results, and only in a subsequent request
after you've received a response where the results are truncated. Set
it to the value of the C<Marker> element in the response you just
received.










=head2 MaxItems => Int

  

Use this only when paginating results to indicate the maximum number of
server certificates you want in the response. If there are additional
server certificates beyond the maximum you specify, the C<IsTruncated>
response element will be set to C<true>. This parameter is optional. If
you do not include it, it defaults to 100.










=head2 PathPrefix => Str

  

The path prefix for filtering the results. For example:
C</company/servercerts> would get all server certificates for which the
path starts with C</company/servercerts>.

This parameter is optional. If it is not included, it defaults to a
slash (/), listing all server certificates.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for ListServerCertificates in Paws::IAM

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
