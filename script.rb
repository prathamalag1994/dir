     #!/usr/bin/env ruby
     # Example application to demonstrate some basic Ruby features
     # This code loads a given file into an associated application
     require 'gibbon'
      class Launcher

      	gb = Gibbon::API.new("2a6262f26c44f974bbc48801f00ca358-us8")
	  	id = gb.campaigns.create({type: "regular", options: {list_id: "920e9dc900", subject: "Send", from_email: "prathamalag@berkeley.edu", from_name: "Red Carpets", generate_text: true}, content: {html: "<html><head></head><body><h1>Foo</h1><p>Bar</p></body></html>"}, :segment_opts => {:match => "any",  :conditions => [{field: "email", op: "eq", value: "prathamalag1994@gmail.com"}] }})
	  	gb.campaigns.send(:cid => id["id"])
      end

     launcher = Launcher.new