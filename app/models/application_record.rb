class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.translate_enum_name(enum_name, enum_value)
    I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
  end

  def self.translate_enum_collection(enum_name)
    enum_values = self.send(enum_name.to_s.pluralize).keys
    enum_values.map do |enum_value|
      self.translate_enum_name enum_name, enum_value
    end
  end

  def self.translate_enum_with_values(enum_name, enum_value)
    enum_values = self.send(enum_name.to_s.pluralize).keys
    enum_values.map do |enum_value|
      {
        value: enum_value,
        label: self.translate_enum_name(enum_name, enum_value)
      }
    end
  end
  
  # primary_abstract_class
end
