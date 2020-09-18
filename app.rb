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

# compare username and password
def authenticateUser (username, password, userList)
    userList.each do |userMatch|
        if userMatch[:username] == username && userMatch[:password] == password
            return userMatch
        else
            return "Username and Password do not match"
        end
    end
end

attempts = 1
# loop through to verify username && password match
while attempts < 4
    # prompt user for username
    print "Username:"
    username = gets.chomp
    # prompt user for password
    print "Password:"
    password = gets.chomp
    authenitucation = authenticateUser(username, password, users)
    puts authenitucation
    puts "Press n to quit or any other key to continue"
    input = gets.chomp.downcase
    # break while loop with attempts
    break if input == "n"
    attempts += 1
end