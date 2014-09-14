package AWS::API::SingleEndpointCaller {
  use Moose::Role;
  requires 'service';

  sub region {
    # http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # For services that use a globally unique endpoint, such as IAM, use us-east-1
    return 'us-east-1';
  }

  sub endpoint_host {
    my $self = shift;
    return sprintf '%s.amazonaws.com', $self->service;
  }

  sub _api_endpoint {
    my $self = shift;
    return sprintf '%s://%s/', 'https', $self->endpoint_host;
  }
}

1;
