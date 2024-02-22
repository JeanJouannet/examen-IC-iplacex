package artifact_iplacex;
import static org.junit.Assert.assertNotNull;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.junit.Test;

public class DatabaseConnectionTestClass {
	
	@Test
	public void testConnection() {
        String url = "jdbc:mysql://localhost:3306/iplacex";
        String user = "root";
        String password = "admin";
        
        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            assertNotNull("La conexión a la base de datos no puede ser nula", connection);
            System.out.println("Conexión exitosa a la base de datos.");          
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
        }
    }
}


