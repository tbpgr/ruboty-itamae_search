require 'itamae-sonar'

module ItamaeSonarHelper
  def call_method(method_name, *args)
    if args.size == 0
      ItamaeSonar.send(method_name)
    else
      ItamaeSonar.send(method_name, args.first)
    end
  end

  def gem_name
    message[:gem_name]
  end

  def limit
    message[:limit].to_i
  end
end
