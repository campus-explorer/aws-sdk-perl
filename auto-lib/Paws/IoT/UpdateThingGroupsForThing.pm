
package Paws::IoT::UpdateThingGroupsForThing;
  use Moose;
  has ThingGroupsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'thingGroupsToAdd');
  has ThingGroupsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'thingGroupsToRemove');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThingGroupsForThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/updateThingGroupsForThing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateThingGroupsForThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateThingGroupsForThing - Arguments for method UpdateThingGroupsForThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThingGroupsForThing on the 
AWS IoT service. Use the attributes of this class
as arguments to method UpdateThingGroupsForThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThingGroupsForThing.

As an example:

  $service_obj->UpdateThingGroupsForThing(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ThingGroupsToAdd => ArrayRef[Str|Undef]

The groups to which the thing will be added.



=head2 ThingGroupsToRemove => ArrayRef[Str|Undef]

The groups from which the thing will be removed.



=head2 ThingName => Str

The thing whose group memberships will be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThingGroupsForThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
