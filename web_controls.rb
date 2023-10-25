control 'apache-web-server' do
  impact 1.0
  title 'Apache Web Server Configuration'

  # Check if Apache package is installed
  describe package('httpd') do
    it { should be_installed }
  end

  # Check if Apache service is enabled and running
  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end

  # Check if the default web page contains "Hello Synechron !!"
  describe file('/var/www/html/index.html') do
    it { should exist }
    its('content') { should include 'Hello Synechron !!' }
  end
end
