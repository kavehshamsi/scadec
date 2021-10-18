setmode -bscan 
setcable -p auto 
#identify
addDevice -p 1 -file ./sca_unlock_top.bit
program -p 1
#program -p [device number] 
#saveCdf -file [filename] 
#loadCdf -file [filename] 
quit
