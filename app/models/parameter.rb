class Parameter < ActiveRecord::Base
  belongs_to :parameterable, :polymorphic => true
end
