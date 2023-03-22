public class test {
    import org.junit.After;
    import org.junit.Before;
    import org.junit.Test;
    import org.openqa.selenium.By;
    import org.openqa.selenium.WebDriver;
    import org.openqa.selenium.WebElement;
    import org.openqa.selenium.chrome.ChromeDriver;
    
    import java.sql.*;
    
    import static org.junit.Assert.assertEquals;
    
    public class LoginSignupTest {
    
        private WebDriver driver;
    
        @Before
        public void setUp() {
            // using chrome
            driver = new ChromeDriver(); 
            driver.get("http://127.0.0.1:5500/target/classes/password.html");
        }
    
        @Test
        public void testLogin() throws SQLException {
            // input the information
            WebElement username = driver.findElement(By.id("users"));
            WebElement password = driver.findElement(By.id("password"));
            WebElement loginButton = driver.findElement(By.id("login_button"));
            username.sendKeys("fxy");
            password.sendKeys("fxy5774");
            loginButton.click();
    
            // check the user if or not get in 
            WebElement welcomeMessage = driver.findElement(By.id("welcome_message"));
            assertEquals("SUCCESS", welcomeMessage.getText());
    
            // check the data of the usersif or not in the database
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:127.0.0.1:5500/sql", "root", "password");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE username = 'fxy'");
            assertTrue(resultSet.next());
            resultSet.close();
            statement.close();
            connection.close();
        }
    
        @Test
        public void testSignup() throws SQLException {
            // signup pages
            WebElement signupButton = driver.findElement(By.id("signup_button"));
            signupButton.click();
    
            // unter the informationn
            WebElement username = driver.findElement(By.id("username"));
            WebElement password = driver.findElement(By.id("password"));
            WebElement telephone = driver.findElement(By.id("telephone"));
            WebElement identity = driver.findElement(By.id("student"));
            // student test
            username.sendKeys("g");
            password.sendKeys("fxy5774");
            telephone.sendKeys("18380438675");
            identity.sendKeys("student");
// --------------------------------------------------------------------------------------------------
            // teacher test
            username.sendKeys("Wang");
            password.sendKeys("wang");
            telephone.sendKeys("13548967537");
            identity.sendKeys("teacher");
// --------------------------------------------------------------------------------------------------
            // wrong test1
            username.sendKeys("NONE");
            password.sendKeys("wang");
            telephone.sendKeys("135485567537");
            identity.sendKeys("teacher");
// --------------------------------------------------------------------------------------------------
            // wrong test2
            username.sendKeys("Wang");
            password.sendKeys("ww");
            telephone.sendKeys("13548967537");

            WebElement welcomeMessage = driver.findElement(By.id("welcome_message"));
            assertEquals("SUCCESS", welcomeMessage.getText());
    
            // check if the user is in the database
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "password");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM users WHERE username = 'new_user'");
            assertTrue(resultSet.next());
            resultSet.close();
            statement.close();
            connection.close();
        }
    
        @After
        public void tearDown() {
            driver.quit();
        }
    }
}
