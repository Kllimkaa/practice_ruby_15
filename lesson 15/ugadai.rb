if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end

end
puts "Здравствуйте, сегодня мы сыграем в игру Угадай слово, мы будем давать слова с одной или несколькими спрятанными буквами, вам надо будет отгодать целое слово... "
sleep 2
puts "Для начала мы загадаем вам слово К*мыс, введите букву в консоль"
hum = STDIN.gets.encode("UTF-8").chomp
if hum == "у"
    puts "Да, мы загадали слово Кумыс"
else  
    puts "Нет, мы загадали слово Кумыс"
end
sleep 2
puts "Продолжаем нашу игру, мы загадали слово квант*вый, введите букву в консоль"
hum1 = STDIN.gets.encode("UTF-8").chomp
if hum1 == "о"
    puts "Да, мы загадали слово квантовый"
else
    puts "Нет, мы загадали слово квантовый"
end
sleep 2
puts "Последний раунд игры, мы загадали слово гарг*на, введите букву в консоль"
hum2 = STDIN.gets.encode("UTF-8").chomp
if hum2 == "о"
    puts "Да, мы загадали слово гаргона"
else
    puts "Нет, мы загадали слово гаргона"
end
sleep 1
puts "Спасибо за игру !!!"