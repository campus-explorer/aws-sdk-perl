package Paws::RDS::Event;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Message => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::Event object:

  $service_obj->Method(Att1 => { Date => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

This data type is used as a response element in the DescribeEvents
action.

=head1 ATTRIBUTES


=head2 Date => Str

  Specifies the date and time of the event.


=head2 EventCategories => ArrayRef[Str]

  Specifies the category for the event.


=head2 Message => Str

  Provides the text of this event.


=head2 SourceArn => Str

  


=head2 SourceIdentifier => Str

  Provides the identifier for the source of the event.


=head2 SourceType => Str

  Specifies the source type for this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

