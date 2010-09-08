class Robin < Ohm::Model
  index :name
  attribute :name
  attribute :items
  counter :index
  

  def self.find_or_create(opts)
    items = opts.delete(:items)
    #robin = find(opts).first || create(opts)
    robin = super(opts)
    robin.items = items
    robin
  end

  def validate
    assert_present :name
  end
  
  def next
    items[self.incr(:index) % items.count]
  end
end
