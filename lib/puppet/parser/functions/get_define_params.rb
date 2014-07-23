module Puppet::Parser::Functions
  newfunction(
  :get_define_params, :type => :rvalue,
  :doc => "Get definition parameters, their values and return as hash") do |args|

    raise(Puppet::ParseError, "get_define_params(): Wrong number of arguments " +
      "given (#{args.size} for 1)") if args.size != 1

    resourcex = self.find_definition(args[0])

    return resourcex.to_data_hash['parameters']
  end 
end
