def adivina_numero valor
    number = 25
    puts "Lo Conseguiste" if (valor == number)
    puts "¡La suposición fue demasiado alta!" if (valor > number)
    puts "¡La suposición fue demasiado baja!" if (valor < number)
end 

adivina_numero 25
