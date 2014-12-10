
package Paws::RedShift::DescribeEventCategories {
  use Moose;
  has SourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EventCategoriesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeEventCategories - Arguments for method DescribeEventCategories on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

As an example:

  $service_obj->DescribeEventCategories(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 SourceType => Str

  

The source type, such as cluster or parameter group, to which the
described event categories apply.

Valid values: cluster, snapshot, parameter group, and security group.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeEventCategories in Paws::RedShift

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
