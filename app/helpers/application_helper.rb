module ApplicationHelper
  def to_attributes_array(collection, attribute)
    collection.map { |instance| instance[attribute] }
  end

  def to_described_code(collection)
    collection.map { |instance| instance.described_code }
  end
end
