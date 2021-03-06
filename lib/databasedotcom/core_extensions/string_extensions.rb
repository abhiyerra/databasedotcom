# This extends String to add the +resourcerize+ method.
class String
  unless respond_to?(:resourcerize)
    # Dasherizes and downcases a camelcased string. Used for Feed types.
    def resourcerize
      self.gsub(/([a-z])([A-Z])/, '\1-\2').downcase
    end
  end
end
