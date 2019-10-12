# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  body       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
    validates :title, presence: true
  end