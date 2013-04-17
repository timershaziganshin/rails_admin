require 'rails_admin/config/fields/types/has_many_association'

module RailsAdmin
  module Config
    module Fields
      module Types
        class HasAndBelongsToManyAssociation < RailsAdmin::Config::Fields::Types::HasManyAssociation
          # Register field type for the type loader
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :relation_name do
            self.abstract_model.model_name.underscore.pluralize
          end

        end
      end
    end
  end
end
