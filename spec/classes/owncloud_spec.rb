require 'spec_helper'

describe 'owncloud' do

  let(:facts) {{
    :operatingsystem => 'Debian',
    :operatingsystemmajrelease => '7'
  }}

  it { should compile.with_all_deps }

end
