users = [
    {username: "shawn", password: "developer"},
    {username: "rickSanchez", password: "burp"},
    {username: "harryPotter", password: "slytherin"},
    {username: "blackPanther", password: "wakandaForever"},
    {username: "vegeta", password: "saiyanPrince"}
]

puts "Welcome to the Authenticator"
25.times {print "_"}
puts
puts "This program will take input from the user and compare password"
puts "If the password is correct, you will get back the user object"

attempts = 1
# loop through to verify username && password match
while attempts < 4
    # prompt user for username
    print "Username:"
    username = gets.chomp
    # prompt user for password
    print "Password:"
    password = gets.chomp
    # compare username and password
    users.each do |user|
        if user[:username] == username && user[:password] == password
            puts user
        else
            puts "Username and Password do not match"
        end
    end
    puts "Press n to quit or any other key to continue"
    input = gets.chomp.downcase
    # break while loop with attempts
    break if input == "n"
    attempts += 1
end