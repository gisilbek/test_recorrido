class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :personal, :contract_id, :start_time, :end_time

  def contract
    object.contract
  end
end
