from  conecta_base import *

sal_base=float(input('Salario '))
datos_isr=recupera_datosIsr(sal_base)
print(datos_isr)
diferencia=sal_base-datos_isr[0]
print(diferencia)
por=diferencia*datos_isr[3]/100
print(por)
cf=datos_isr[2]
print(cf)
isr=cf+por
print(isr)
sal_neto=sal_base-isr
print(sal_neto)