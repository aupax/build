import os, sys

print ("\033[1;32mLogin system by aupaxyz")
print ("\033[1;32m-----------------------")
print ("\033[1;32mSilahkan masukkan username dan password anda")
print ("\033[1;32m                       ")

username = 'aupaxyz'
password = 'aupa'

def restart():  
  ngulang = sys.executable
  os.execl(ngulang, ngulang, *sys.argv)

def main():
  uname = raw_input("username : ")
  if uname == username:
    pwd = raw_input("password : ")
  
    if pwd == password:
      print ("\033[1;32m               ")
      print "\033[1;32mBerhasil login..",
      sys.exit()

    else:
      print "\033[1;32mMaaf password anda salah! \033[00m"
      print "Segera login ulang..\n"
      restart()
 
  else:
    print "Maaf username anda salah! \033[00m"
    print "Segera login ulang..\n"
    restart()

try:
  main()

except KeyboardInterrupt:
  os.system('clear')
  restart()
