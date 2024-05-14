<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="mipk.beanDB"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <link rel="stylesheet" href="panelAdministrador.css">
    
    <title>Document</title>
</head>
<body>
    <body>
        <main>
          <nav class="main-menu">
            <div>
              <div class="user-info">
                <img
                  src="imagenes/foto-Personal.jpg" alt="imagen del  administrador" />             
              </div>
              <ul>
                <li class="nav-item active">
                  <a href="#">
                    <i class="fa fa-map nav-icon"></i>
                    <span class="nav-text">Gestion</span>
                  </a>
                </li>
    
                <li class="nav-item">
                  <a href="#">
                    <i class="fa fa-arrow-trend-up nav-icon"></i>
                    <span class="nav-text">Diseño</span>
                  </a>
                </li>
    
                <li class="nav-item">
                  <a href="#">
                    <i class="fa fa-compact-disc nav-icon"></i>
                    <span class="nav-text">Reportes</span>
                  </a>
                </li>
    
                <li class="nav-item">
                  <a href="#">
                    <i class="fa fa-circle-play nav-icon"></i>
                    <span class="nav-text">Documentos</span>
                  </a>
                </li>
    
               <br><hr><br>
               <li class="nav-item">
                <a href="#">
                  <i class="fa fa-circle-play nav-icon"></i>
                  <span class="nav-text">Ventas</span>
                </a>
              </li>
              <li class="nav-item">
                <a href="#">
                  <i class="fa fa-circle-play nav-icon"></i>
                  <span class="nav-text">Comprados</span>
                </a>

                <li class="nav-item">
                    <a href="#">
                      <i class="fa fa-circle-play nav-icon"></i>
                      <span class="nav-text">Contabilidad</span>
                    </a>
                  </li>

                <li class="nav-item">
                    <a href="#">
                      <i class="fa fa-circle-play nav-icon"></i>
                      <span class="nav-text">Banco</span>
                    </a>
                </li>
              </li>
              </ul>
            </div>
    
            <ul>
              <li class="nav-item">
                <a href="#">
                  <i class="fa fa-user nav-icon"></i>
                  <span class="nav-text">Account</span>
                </a>
              </li>
    
              <li class="nav-item">
                <a href="#">
                  <i class="fa fa-gear nav-icon"></i>
                  <span class="nav-text">Settings</span>
                </a>
              </li>
    
              <li class="nav-item">
                <a href="index.html">
                  <i class="fa fa-right-from-bracket nav-icon"></i>
                  <span class="nav-text">Logout</span>
                </a>
              </li>
            </ul>
          </nav>
    
          <section class="content">
            <div class="left-content">
              <h1>Panel de Administracion</h1>
              <div class="contenedor-administracion-producto">
              
                <div class="administracion-aniadir-producto">
                  <h1>Añadir Producto</h1>
                 <form action="">
                  <input type="text" class="form-nuevoproducto-nombre" placeholder="Nombre Producto" name="nombreAniadir" required>
                  <input type="number" class="form-nuevoproducto-precio" placeholder="Precio"  name="precioAniadir" required>
                  <input type="number" class="form-nuevoproducto-cantidad" placeholder="Cantidad" name="cantidadAniadir" required>
                  <input type="submit" class="form-nuevoproducto-sumbit">
                 </form>
                </div>

                <div class="administracion-descuento-producto">
                  <h1>Descuentos Producto</h1>
                  <form action="">
                   <input type="text" class="form-nuevoproducto-nombre" placeholder="ID Producto" name="idProductoDescuento" required>
                   <input type="text" class="form-nuevoproducto-precio" placeholder="Descuento" name="nuevoPrecioDescuento" required>
                   <input type="submit" class="form-nuevoproducto-sumbit">
                  </form>
                 </div>

                 <div class="administracion-descuento-producto">
                  <h1>Eliminar Producto</h1>
                  <form action="">
                   <input type="text" class="form-nuevoproducto-nombre" placeholder="ID Producto" name="idProductoEliminar" required>
                   <input type="submit" class="form-nuevoproducto-sumbit">
                  </form>
                 </div>
                
                
              </div>
    
              <div class="artists">
                <h1>Featured Artists</h1>
                <div class="artist-container containers">
                  <div class="porcentaje-dinero">
                    <h2 class="monto-ventas-dia-titulo">Porcentaje</h2>
                    <h3 class="monto-ventas-dia">92%</h3>
                  </div>
    
                  <div class="facturacion-dinero">
                    <h2 class="monto-ventas-dia-titulo">Facturacion</h2>
                    <h3 class="monto-ventas-dia">9.869,99€</h3>
                  </div>
    
                  <div class="financiado-dinero">
                    <h3 class="monto-ventas-dia-titulo">Financiado</h3>
                    <h3 class="monto-ventas-dia">1.535€</h3>
                  </div>

                  <div class="proveedores-dinero">
                    <h3 class="monto-ventas-dia-titulo">Proveedores</h3>
                    <h3 class="monto-ventas-dia">1090,39€</h3>
                  </div>
                </div>
                  
              </div>
    
            
              <div class="albums">
                
                <div class="tabla-envios">    
                  <table>
                    <thead>
                    <% 
						String query = "select * from compras_has_productos;";
						
						beanDB baseDeDatos = new beanDB();
						baseDeDatos.conectarBD();
						String[][] tablares = baseDeDatos.resConsultaSelectA3(query); 
						baseDeDatos.desconectarBD();
					%>
                    
						  <table>
							
							<% for(int i = 0; i < tablares.length;i++){
								
								%><tr><% 
								for(int j=0; j< tablares[i].length; j++){
								%><td><%=tablares[i][j] %></td><%
								}
								%></tr><%
							}
							%>
						</table>
                    </tbody>
                  </table>    
                </div>
                
                
              </div>
            </div>
    
            <div class="right-content">
              <div class="recommended-songs">
                <h2>Recuento Diario</h2>
                <div class="total-ventas-diario">
                  <h2 class="monto-ventas-dia-titulo">Total Ventas</h2>
                  <h3 class="monto-ventas-dia">9.329,89€</h3>
                </div><br>

                <h2>Mejores Ventas</h2>
                    <div class="mejores-ventas-diario">
                        <img src="imagenes/foto-Personal.jpg" alt="imagen de usuario mas vendido" class="imagen-usuario-mejorventa01">
                        <p class="nombre-mejor-venta">David melendez nuñez</p>
                        <p class="precio-mejor-venta">190€</p><br>
                    </div>
                    <div class="mejores-ventas-diario">
                        <img src="imagenes/foto-Personal.jpg" alt="imagen de usuario mas vendido" class="imagen-usuario-mejorventa01">
                        <p class="nombre-mejor-venta">David melendez nuñez</p>
                        <p class="precio-mejor-venta">190€</p><br>
                    </div>
                    <div class="mejores-ventas-diario">
                        <img src="imagenes/foto-Personal.jpg" alt="imagen de usuario mas vendido" class="imagen-usuario-mejorventa01">
                        <p class="nombre-mejor-venta">David melendez nuñez</p>
                        <p class="precio-mejor-venta">190€</p><br>
                    </div>
              </div>
              <div class="music-player">
                <div class="album-cover">
                  <img src="images/album-cover.png" id="rotatingImage" alt="" />
                  <span class="point"></span>
                </div>
    
                <h2>Redemption</h2>
                <p>Besomorph & Coopex</p>
    
                <audio id="song">
                  <source src="Besomorph-Coopex-Redemption.mp3" type="audio/mpeg" />
                </audio>
    
                <input type="range" value="0" id="progress" />
    
                <div class="controls">
                  <button class="backward">
                    <i class="fa-solid fa-backward"></i>
                  </button>
                  <button class="play-pause-btn">
                    <i class="fa-solid fa-play" id="controlIcon"></i>
                  </button>
                  <button class="forward">
                    <i class="fa-solid fa-forward"></i>
                  </button>
                </div>
              </div>
            </div>
          </section>
        </main>
      </body>
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
      <script src="panelAdministrador.js"></script>
</body>
</html>


<% 
beanDB baseDatos = new beanDB();
baseDeDatos.conectarBD();


String nombreAniadir = request.getParameter("nombreAniadir");
String precioAniadir = request.getParameter("precioAniadir");
String cantidadAniadir = request.getParameter("cantidadAniadir");
String aniadirProducto = "INSERT INTO `productos` (`stock_producto`,`nombre_producto`,`pvp_producto`) VALUES ('" + cantidadAniadir + "','" + nombreAniadir + "','" + precioAniadir + "');";
baseDeDatos.insert(aniadirProducto);
baseDeDatos.desconectarBD();



beanDB baseDatosUpdate = new beanDB();

baseDatosUpdate.conectarBD();

String idProductoDescuento = request.getParameter("idProductoDescuento");
String nuevoPrecioDescuento = request.getParameter("nuevoPrecioDescuento");
String updateProduto = "UPDATE productos SET pvp_producto = "  + nuevoPrecioDescuento + " WHERE producto_id = " + idProductoDescuento + ";";

baseDatosUpdate.update(updateProduto);
baseDatosUpdate.desconectarBD();



beanDB baseDatosEliminar = new beanDB();
baseDatosEliminar.conectarBD();

String idProductoEliminar = request.getParameter("idProductoEliminar");

String eliminarProducto = "DELETE FROM productos WHERE producto_id = " + idProductoEliminar + ";";
baseDatosEliminar.delete(eliminarProducto);
baseDatosEliminar.desconectarBD();

%>
  
         
              
              
              
              
           