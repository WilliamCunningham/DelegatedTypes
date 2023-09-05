class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  enum status: { active: 'active', inactive: 'inactive' }
end
