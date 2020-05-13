class Relationship < ApplicationRecord
  # フォローする人
  belongs_to :climber
  # フォローされる人
  belongs_to :follow, class_name: 'Climber'
end
