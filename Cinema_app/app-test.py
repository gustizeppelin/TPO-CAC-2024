from flask import Flask
from flask import render_template, redirect, request
from flaskext.mysql import MySQL

app=Flask(__name__)#esta es la aplicación

mysql=MySQL() #es la conexion con la base de datos

#configuarion de la conexion
app.config['MYSQL_DATABASE_HOST']='localhost'
app.config['MYSQL_DATABASE_USER']='root'
app.config['MYSQL_DATABASE_PASSWORD']=''
app.config['MYSQL_DATABASE_BD']='cine'  #importante nombre de la base de datos

mysql.init_app(app)
# INSERT INTO `pelicula` (`id_pelicula`, `titulo`, `duracion`, `anio`) VALUES (NULL, 'Los 7 Locos', '179', '1998'), (NULL, 'Alicia', '100', '2000');

@app.route('/')
def index():
    sql="SELECT * FROM cine.pelicula"
    # sql="INSERT INTO `cine`.`pelicula` (`id_pelicula`, `titulo`, `duracion`, `anio`) VALUES (NULL, 'Los 8 Locos', '1899', '1998');"
    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute(sql)
    db_peliculas=cursor.fetchall()
    for pelicula in db_peliculas:
        print(pelicula)
    # conn.commit()
    return render_template("prueba.html", peliculas=db_peliculas)

@app.route('/create')
def create():
    return render_template("create.html")

@app.route("/storage", methods=["POST"])
def storage():
    _nombre=request.form["txtTitulo"]
    _duracion=request.form["txtDuracion"]
    _anio=request.form["txtAño"]

    datos=(_nombre,_duracion,_anio)

    sql="INSERT INTO `cine`.`pelicula` (`id_pelicula`, `titulo`, `duracion`, `anio`) VALUES (NULL, %s, %s, %s);"

    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute(sql,datos)
    conn.commit()

    return redirect("/")
    
@app.route("/editable2", methods=["POST"])
def editable2():

    _id_Pelicula=request.form["txtIDPelicula"]
    _nombre=request.form["txtTitulo"]
    _duracion=request.form["txtDuracion"]
    _anio=request.form["txtAño"]

    datos=(_nombre,_duracion,_anio,_id_Pelicula)
    for dato in datos:
        print(dato)

    sql="UPDATE cine.pelicula SET titulo=%s, duracion=%s, anio=%s WHERE pelicula.id_pelicula=%s ;"

    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute(sql,datos)
    conn.commit()

    return redirect("/")

@app.route("/destroy/<int:id>")
def destroy(id):
    sql="DELETE FROM cine.pelicula WHERE pelicula.id_pelicula = %s;"
    conn=mysql.connect()
    cursor=conn.cursor()
    cursor.execute(sql,(id)) 
    conn.commit()   
    return redirect("/")


@app.route('/editable/<int:id>')
def editable(id):
    sql = "SELECT * FROM cine.pelicula WHERE pelicula.id_pelicula = %s"
    conn = mysql.connect()
    cursor = conn.cursor()
    cursor.execute(sql, (id,))
    pelicula = cursor.fetchone()
    return render_template("editable.html", pelicula=pelicula) 

if __name__=="__main__":
    app.run(debug=True, port=8055)