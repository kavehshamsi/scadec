import time
#from pyftdi.ftdi import Ftdi
#ft = Ftdi()
#url = 'ftdi://ftdi:2232:FT2RTNYW/2'
#ft.open_bitbang_from_url(url, 0b00001111)
#print(ft.is_connected)
#print(ft.bitbang_enabled)
#print(ft.device_version)
#print(ft.fifo_sizes)
#print(ft.get_identifiers(url))
#print(ft.has_mpsse)
#print(ft.has_wide_port)
#print(ft.ic_name)
#print('{:08b}'.format(ft.read_pins()))
#time.sleep(5)
#exit(1)

from pyftdi.ftdi import Ftdi
print(Ftdi().open_from_url('ftdi:///?'))
exit(1)

from pyftdi.gpio import GpioController

gp = GpioController()
gp.open_from_url('ftdi://ftdi:2232:FT2RTNYW/2')
print(gp.is_connected)
print('{:08b}'.format(gp.pins))
print('{:08b}'.format(gp.direction))
gp.set_direction(0b11111111, 0b11111111)
print('after config')
print('{:08b}'.format(gp.pins))
print('{:08b}'.format(gp.direction))
gp.write(0b00000000)
print('{:08b}'.format(gp.pins))
print('{:08b}'.format(gp.direction))
time.sleep(5)



