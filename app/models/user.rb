# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	include DeviseTokenAuth::Concerns::User

	has_many :performance_data, class_name: 'PerformanceData'
	has_many :bmi_data, class_name: 'BmiData'
end
