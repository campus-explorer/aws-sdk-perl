
package Paws::EC2::CopySnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has PresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'presignedUrl' );
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshot - Arguments for method CopySnapshot on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

As an example:

  $service_obj->CopySnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Description => Str

  

A description for the new Amazon EBS snapshot.










=head2 DestinationRegion => Str

  

The destination region of the snapshot copy operation. This parameter
is required in the C<PresignedUrl>.










=head2 DryRun => Bool

  

=head2 PresignedUrl => Str

  

The pre-signed URL that facilitates copying an encrypted snapshot. This
parameter is only required when copying an encrypted snapshot with the
Amazon EC2 Query API; it is available as an optional parameter in all
other cases. The C<PresignedUrl> should use the snapshot source
endpoint, the C<CopySnapshot> action, and include the C<SourceRegion>,
C<SourceSnapshotId>, and C<DestinationRegion> parameters. The
C<PresignedUrl> must be signed using AWS Signature Version 4. Because
Amazon EBS snapshots are stored in Amazon S3, the signing algorithm for
this parameter uses the same logic that is described in Authenticating
Requests by Using Query Parameters (AWS Signature Version 4) in the
I<Amazon Simple Storage Service API Reference>. An invalid or
improperly signed C<PresignedUrl> will cause the copy operation to fail
asynchronously, and the snapshot will move to an C<error> state.










=head2 B<REQUIRED> SourceRegion => Str

  

The ID of the region that contains the snapshot to be copied.










=head2 B<REQUIRED> SourceSnapshotId => Str

  

The ID of the Amazon EBS snapshot to copy.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CopySnapshot in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
