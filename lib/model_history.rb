module ModelHistory
  class RecordedModel < ActiveRecord::Base
    after_save :record_model_changes

    def record_model_changes
      updated_history = JSON.parse(model_history)
      updated_history[Time.now.to_i] = 'updated'
      update_column('model_history', updated_history)
    end
  end
end
