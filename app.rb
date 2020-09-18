users = [
    {username: "shawnH", password: "developer"},
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

# prompt user for username
# prompt user for password
# break while loop with attempts
attempts = 1
# loop through to verify username && password match
while attempts < 4
    puts "Press n to quit or any other key to continue"
    input = gets.chomp.downcase
    if input == "n"
        break
    end
    attempts += 1
end