require 'spec_helper'

describe 'TwoFactorAuthentication routing', type: :routing do
  it 'routes users two factor show path' do
    expect(get: '/users/two_factor_authentication').
      to route_to('devise/two_factor_authentication#show')
  end

  it 'routes users two factor update path' do
    expect(put: '/users/two_factor_authentication').
      to route_to('devise/two_factor_authentication#update')
  end

  it 'routes users two factor resend_code path' do
    expect(get: '/users/two_factor_authentication/resend_code').
      to route_to('devise/two_factor_authentication#resend_code')
  end
end
