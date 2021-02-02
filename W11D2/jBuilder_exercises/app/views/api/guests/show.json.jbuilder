# json.partial! "guest", guest: @guest 
# json.guest do   
json.extract! @guest, :name, :age, :favorite_color
# end

json.gifts do 
    @guest.gifts.each do |gift|
        json.set! gift.id do 
            json.extract! gift, :title, :description 
        end
    end
end



