class ReservaTest < ActiveSupport::TestCase
fixtures :reservas 

test "reserva attributes must not be empty" do
reserva = Reserva.new
assert reserva.invalid?
assert reserva.errors[:Nombre].any?
assert reserva.errors[:descripcion].any?
assert reserva.errors[:precio].any?
assert reserva.errors[:image_url].any?
end

test "reserva precio must be positive" do
reserva = Reserva.new(Nombre: "My Book Title",
descripcion: "yyy",
image_url: "zzz.jpg")
reserva.precio = -1
assert reserva.invalid?
assert_equal ["must be greater than or equal to 0.01"],
reserva.errors[:precio]
reserva.precio = 0
assert reserva.invalid?
assert_equal ["must be greater than or equal to 0.01"],
reserva.errors[:precio]
reserva.precio = 1
assert reserva.valid?
end

def new_reserva(image_url)
Reserva.new(Nombre: "My Book Title",
descripcion: "yyy",
precio: 1,
image_url: image_url)
end
test "image url" do
ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
bad = %w{ fred.doc fred.gif/more fred.gif.more }
ok.each do |name|

report erratum  • discuss
assert new_reserva(name).valid?, "#{name} shouldn't be invalid"
end
bad.each do |name|
assert new_reserva(name).invalid?, "#{name} shouldn't be valid"
end
end

test "reserva is not valid without a unique nombre" do
reserva = Reserva.new(Nombre: reserva(:ruby).nombre,
descripcion: "yyy",
precio: 1,
image_url: "fred.gif")
assert reserva.invalid?
assert_equal ["has already been taken"], reserva.errors[:Nombre]
end



end