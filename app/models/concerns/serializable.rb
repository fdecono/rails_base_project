module Serializable
  def serializable(options = {})
    ActiveModelSerializers::SerializableResource.new(self, options).as_json
  end
end
