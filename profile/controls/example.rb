# encoding: utf-8
# copyright: 2018, The Authors

#title 'sample section'

# you can also use plain tests
#describe file('/tmp') do
 # it { should be_directory }
#end

# you add controls here
control 'tmp-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Create /tmp directory'             # A human-readable title
  desc 'An optional description...'
  #describe file('/tmp') do                  # The actual test
  #  it { should be_directory }
  #end
  describe file('C:\Users\i326645\Downloads\test.txt') do
  it { should exist}

  end
  describe docker.containers.where { names == 'hello-world' } do
  it { should be_running }
  its('images') { should_not include 'u12:latest' }
  it { should exist }
end
describe docker.version do
  its('Server.Version') { should cmp >= '18.03.1-ce'}
  its('Client.Version') { should eq  '1.12'}
end
end
