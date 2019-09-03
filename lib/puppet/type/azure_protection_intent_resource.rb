require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_protection_intent_resource) do
  @doc = "Base class for backup ProtectionIntent."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_protection_intent_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "Optional ETag."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource Id represents the complete path to the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name associated with the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "ProtectionIntentResource properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/..."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:fabric_name) do
    desc "Fabric name associated with the backup item."
    validate do |value|
      true
    end
  end
  newparam(:intent_object_name) do
    desc "Intent object name."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "resource backed up item"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group where the recovery services vault is present."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription Id."
    validate do |value|
      true
    end
  end
  newparam(:vault_name) do
    desc "The name of the recovery services vault."
    validate do |value|
      true
    end
  end
end
