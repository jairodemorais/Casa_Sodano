# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ description: 'Aire Libre'},
                              { description: 'Audio'},
                              { description: 'Bebes y ninio'},
                              { description: 'cocina'},
                              { description: 'Cuidado Personal'},
                              { description: 'Electrodomesticos'},
                              { description: 'Electronica'},
                              { description: 'Fitness'},
                              { description: 'Frio Calor'},
                              { description: 'Linea Blanca'},
                              { description: 'Muebles'},
                              { description: 'Musica'},
                              { description: 'Rodados'},
                              { description: 'Telefonia'},
                              { description: 'Tv video'}])
                              

items = Item.create([{ title: 'MINI.PHILIPS FWM-153-55', description: 'Potencia Maxima 800 W PMPO Reproduce CD, MP3, WMA Radio AM-FM Entrada MP3 Link Conexion para TV y Reproductor de DVD', price: 799, url_image: 'audio1.png', category: categories[1]}, 
                    { title: 'MINI.NOBLEX APM-J55', description: 'Potencia Maxima: 1700 W PMPO Reproduce: CD, MP3, WMA Radio AM / FM Entrada USB', price: 1099, url_image: 'audio2.png', category: categories[1]}, 
                    { title: 'MOULINEX', description: 'CAF.MOULINEX FG-3205 CAFE CITY Capacidad: 6 Pocillos Potencia: 600 W Portafiltro Suspendido y Giratorio Sistema Antigoteo Luz Piloto', price: 119, url_image: 'cafetera.png', category: categories[3]}, 
                    { title: 'CAM.DIG.SAMSUNG PL120', description: 'CAM.DIG.SAMSUNG PL120 Resolucion: 14.2 Mp Zoom Optico 5 X Doble Pantalla LCD, Frontal de 1,5 y Trasera de 2.7 Alimentacion: Bateria Recargable', price: 1499, url_image: 'camara.png', category: categories[6]},
                    { title: 'BROGAS', description: 'COC.BROGAS SOPITA 1100 GN 2 Hornallas Horno Temp.Max 220 Inc. Fuente enlozada y rejilla Para Gas Natural', price: 899, url_image: 'cocina.png', category: categories[3]},
                    { title: 'PANASONIC', description: 'DVD PANASONIC DVD-S48PR-K Reproduce: CD, DVD, MP3, JPEG, (S)VCD Salida Video Componente Escaneo Progresivo Entrada: USB', price: 379, url_image: 'dvd.png', category: categories[14]},
                    { title: 'KODAD', description: 'CAM.VID.KODAK PLAYSPORT ZX5 Graba Video en Alta Definicion 1080 p Zoom: Digital 4 X Pantalla LCD de 5.1 Cm Graba Hasta 3 Mts Bajo el Agua Salida: AV, HDMI', price: 1299, url_image: 'filmadora.png', category: categories[14]},
                    { title: 'JVC', description: 'CAM.VID.JVC GZ-MS150  Resolucion 230.000 Pixeles Zoom: Optico 40 X, Digital 200 X Pantalla LCD Rotativa de 2,7 Estabilizador de Imagen Avanzado Compatible con Tarjetas SDHC', price: 1799, url_image: 'filmadora2.png', category: categories[14]},
                    { title: 'PATRIC', description: 'HEL.PATRICK HPK310 252L NF BL Capacidad: 252 Lts, No Frost Estantes en el Freezer Estantes de Cristal Templado con Borde Antiderrame Crisper de Frutas y Verduras', price: 3319, url_image: 'heladera.png', category: categories[4]},
                    { title: 'ORBIS', description: 'HORNO ORBIS 980520M Encendido electronico.Horno de gran capacidad con 3 niveles y valvula de seguridad Sistema convecterm de doble vidrio con visor panoramico y luzAislacion termica optimizadaMultigas: Reguladas de fabrica para GN, incluyen kit para transformar a GE', price: 3149, url_image: 'horno.png', category: categories[4]},
                    { title: 'DREAN', description: 'LAV.DREAN UNICOM.116 Capacidad: 5 Kg 11 Programas de Lavado Centrifugado: 620 RPM Media CargaSistema de Enjuague Jet Spray', price: 1689, url_image: 'lavarropa.png', category: categories[9]},
                    { title: 'NOBLEX', description: 'REP.MP3 NOBLEX SQUARE 2GB Memoria Interna: 2 GB Reproduce: MP3, WMA Alimentacion: Bateria Recargable Auriculares con Control de Volumen Almacena Todo Tipo de Archivos Conexion : USB LED de alerta ', price: 199, url_image: 'mp3.png', category: categories[11]},
                    { title: 'PHILCO', description: 'REP.MP3 PHILCO MP-2700 2GB Memoria Interna: 2 GB Reproduce: MP3, WMA Almacena Todo Tipo de Archivos Titulos y Artitas en Display Conector: USB 2.0', price: 219, url_image: 'mp4.png', category: categories[11]},
                    { title: 'KEN BROWN', description: 'NOTEBOOK KEN BROWN IB1404IOST Intel Celeron B810HD 320 GB - Memoria RAM 2 GB Pantalla LED de 14 " - Webcam Windows 7 Starter Wi-Fi - HDMI ', price: 2599, url_image: 'notebook.png', category: categories[6]},
                    { title: 'ADMIRAL', description: 'NOTEBOOK ADMIRAL AS-PDC-001 Pentium - HD 500 GB Memoria RAM 2 GB Pantalla LCD de 14 Windows 7 Home Premium Bateria 6 Celdas Wi-Fi - Webcam', price: 2799, url_image: 'notebook2.png', category: categories[6]},
                    { title: 'ADMIRAL PC', description: 'CPU ADMIRAL A16DVD2GB320W7S AMD Athlon II 160 U HD 320 GB Memoria RAM 2 GB Windows 7 Starter Lectograbadora CD / DVD', price: 1549, url_image: 'pc.png', category: categories[6]},
                    { title: 'OSTER', description: 'PLANCHA OSTER MOD.5002 VAPOR Base de Aluminio Boton Selector para Planchado en Seco o Vapor y Autolimpieza Control de Temperatura Tanque de Agua, Capacidad de 240 Ml', price: 329, url_image: 'plancha.png', category: categories[5]},
                    { title: 'SAMSUNG TV', description: 'TV.LED 18.5"SAMSUNG 19A350 2 en 1 TV LCD / Monitor HD 1368 x 768 p Brillo: 250 Cd/m2 2 HDMI - USB - PC Respuesta: 5 ms', price: 1499, url_image: 'tv.png', category: categories[14]}])                    

news = News.create([{ title: 'PROMOCION Heladera $3500', description: 'llevando dos heladeras whirpool la segunda a solo $3500'},
                   { title: 'PROMOCION Television $300', description: 'llevando dos televisiones sony la segunda a solo $300'},
                   { title: 'PROMOCION Cama $1700', description: 'la cama a solo 1700'},
                   { title: 'PROMOCION notebbok $2500', description: 'la mejor del mundo'}])                  
