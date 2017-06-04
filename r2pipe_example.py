import r2pipe

r2 = r2pipe.open("/bin/ls")
r2.cmd('aa')
func_lst = r2.cmdj("aflj")
print(func_lst)
r2.quit()

