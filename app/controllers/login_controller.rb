class LoginController < ApplicationController
	LDAP_PATH = File.join(Rails.root,"config","ldap.yml")
	LDAP_CONFIG = YAML.load(File.read(LDAP_PATH))[Rails.env]

	def signin
		user = params[:user][:name]
		pass = params[:user][:pass]

  		userName = ",ou=people,dc=vmware,dc=com"
		conn = Net::LDAP.new :host => LDAP_CONFIG["host"],
							 :port => LDAP_CONFIG["port"],
							 :base => LDAP_CONFIG["base"],
							 :encryption => :simple_tls

	    userName = "uid=#{user}" + userName
	    conn.auth userName, pass

	    if conn.bind
	      filter = Net::LDAP::Filter.eq("uid", "#{user}")
	      conn.search(:base => LDAP_CONFIG["base"], :filter => filter) do |entry|
	        #puts entry.cn
	        @ldap = entry.cn
	      end
	    else
	      @ldap = "error1"
	    end

	    rescue Net::LDAP::LdapError => e
	      @ldap = "error2"
	end

	def index
		puts "sending............."
	    UserMailer.welcome_email.deliver
	end
end
