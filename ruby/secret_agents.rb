#encrypt pseudocode
#password
#index of 1st letter
#use .next to get next letter 
#print result. 

#decrypt pseudocode
#password
#index of 1st letter 
#set the index to a variable
#find out what place letter is in entire string of alphabet
#count down 1
#print result

def encrypt(password)
index = 0
while index < password.length
   unless password[index] == "z"
        print password[index] = password[index].next
   else
       print "a"
  end
  index += 1
end

end


def decrypt(password)
index = 0

while index < password.length
    letter = password[index]
    down_1 = "abcdefghijklmnopqrstuvwxyz".index(letter) - 1
    final_letter = "abcdefghijklmnopqrstuvwxyz"[down_1]
    index += 1 
    print final_letter
end

end