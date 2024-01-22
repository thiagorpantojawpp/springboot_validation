import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MainApplication {

    public static void main(String[] args) {
        // Verifica a versão do Java
        String javaVersion = System.getProperty("java.version");
        if (javaVersion.startsWith("11")) {
            System.out.println("Esta aplicação está sendo executada em Java 11.");
        } else {
            System.out.println("Esta aplicação não está sendo executada em Java 11.");
        }

        // Inicia a aplicação Spring Boot
        SpringApplication.run(MainApplication.class, args);
    }
}
