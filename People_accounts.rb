people = []

5.times do |index|

  person = {}
  puts "Enter first name of person #{index+1}"
  person[:firstName] = gets.chomp
  puts "Enter last name of person #{index+1}"
  person[:lastName] = gets.chomp
  while true
    puts "Enter e-mail of person #{index+1}"
    
    email_input=gets.chomp
    indexes_of_at_symbol = (0...email_input.length).find_all {|char_index|email_input[char_index,1]=='@'}


    if indexes_of_at_symbol.length != 1 \
       || email_input [-4,4] !=".com"
      puts "Must have 1 @ and end with .com"
    else

      person[:email] = email_input
      break

    end

    

  end

  person[:account] = rand (1000000000..9999999999)
  people << person

end

#p people

people.each do |person|

  puts "FIRST NAME: #{person[:firstName]}"
  puts "LAST NAME: #{person[:lastName]}"
  puts "E-MAIL: #{person[:email]}"
  puts "ACCT: #{person[:account]}"
  puts ""

end

2.times do

  puts "Enter an account number:"
  input_acct_number = gets.to_i
  puts ""

  account_num_is_valid=false
  people.each do |person|
    
    if person[:account] == input_acct_number
        puts "ACCT: #{person[:account]}"
        puts "FIRST NAME: #{person[:firstName]}"
        puts "LAST NAME: #{person[:lastName]}"
        puts "E-MAIL: #{person[:email]}"
        puts ""
        account_num_is_valid=true
    end
  end

  if !account_num_is_valid
    puts ("Wrong number!")
  end

end


