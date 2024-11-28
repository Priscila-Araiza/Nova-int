import pymysql

##Procedimiento para conectar y extraer información de la BD 
def recupera_datosIsr(salario_bruto):
    ##Se crea un objeto de coneccion a la BD
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='r_humanos')
    ## Se crea un cursor para ejecutar consultas a la base de datos  
    cursor = conn.cursor()
    ##Se utiliza el cursor para ejecutar la consulta sobre la tabla de categorias
    busca="select lim_inf,lim_sup,cuota_fija,porc from isr "
    busca=busca+" where lim_inf<="+str(salario_bruto)+" and lim_sup>="+str(salario_bruto)
    
    cursor.execute(busca)
    ##Se crea una lista para contener las categorias extraidas de la base de datos 
    valores_isr = cursor.fetchone()
    ##cerrar la base de datos 
    conn.close()
    #print(categorias)
    return valores_isr 