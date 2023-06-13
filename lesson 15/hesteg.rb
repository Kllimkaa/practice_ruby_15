puts "Введите строку  с хэштегами: "
string = STDIN.gets.encode("UTF-8").chomp
puts "Напишите фразу с хэштегом"
heshteg = /#[[:word:]-]+/
hashtag = string.scan(heshteg)
puts 'Этот хэштег был найден ' + hashtag.join(',')
if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
        
    end
end