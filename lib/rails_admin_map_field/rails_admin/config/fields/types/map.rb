module RailsAdmin::Config::Fields::Types
  class Map < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(:map, self)

    def allowed_methods
      [@name, address_field, lat_field, lng_field]
    end

    register_instance_option :address_field do
      :address
    end

    register_instance_option :lat_field do
      :lat
    end

    register_instance_option :lng_field do
      :lng
    end


    register_instance_option(:partial) do
      :form_map
    end

    register_instance_option(:google_api_key) do
      nil
    end

    def address_dom_name
      @dom_name ||= "#{bindings[:form].object_name}_#{address_field}"
    end

    def lat_dom_name
      @lat_dom_name ||= "#{bindings[:form].object_name}_#{lat_field}"
    end

    def lng_dom_name
      @lng_dom_name ||= "#{bindings[:form].object_name}_#{lng_field}"
    end
  end
end
