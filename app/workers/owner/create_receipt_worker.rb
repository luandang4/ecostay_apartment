class Owner::CreateReceiptWorker
  include Sidekiq::Worker
  queue_as :default

  def perform(*args)
    apartments = Apartment.all
    apartments.each do |apartment|
      rooms = apartment.rooms
      rooms.each do |room|
        room.orders.new()
      end
    end
  end
end
