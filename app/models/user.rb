# == Schema Information
# Schema version: 20101007212537
#
# Table name: users
#
#  id          :integer         not null, primary key
#  uid         :string(255)
#  first_name  :string(255)
#  last_name   :string(255)
#  memberships :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
require 'ostruct'

class User < ActiveRecord::Base
  serialize :memberships

  attr_reader :current_membership
  attr_reader :companies
  attr_reader :current_company
  attr_reader :role
  attr_reader :clients

  def companies
    @companies ||= memberships.map{|membership| OpenStruct.new(membership)}
  end

  def current_company
    @current_company ||= (companies.detect(&:current) || companies.first)
  end

  def role
    @role ||= current_company.try(:role).try(:to_sym)
  end

  def clients
    @clients ||= current_company.try(:clients).map(&:to_sym)
  end

  def has_client?(client)
    clients.include?(client.to_sym)
  end

  def is_role?(role)
    self.role == role.to_sym
  end

  def method_missing(method, *args, &block)
    case method
      when /^has_([a-z]+)\?$/
        return has_client?($1)
      when /^is_([a-z]+)\?$/
        return is_role?($1)
      else
        super
    end
  end
end

