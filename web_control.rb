control 'apache-service' do
  impact 1.0
  title 'Apache HTTP Server'
  
  # Check if Apache HTTP server is installed
  describe package('httpd') do
    it { should be_installed }
  end

  # Check if Apache HTTP server is enabled and running
  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end
end
