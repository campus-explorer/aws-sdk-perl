
package Paws::SSM::DescribeInstanceInformationResult;
  use Moose;
  has InstanceInformationList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceInformation]');
  has NextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceInformationResult

=head1 ATTRIBUTES


=head2 InstanceInformationList => ArrayRef[L<Paws::SSM::InstanceInformation>]

The instance information list.



=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.




=cut

1;