package BasePackge;

import io.github.bonigarcia.wdm.WebDriverManager;
import io.github.bonigarcia.wdm.config.DriverManagerType;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import java.io.IOException;
import java.sql.SQLException;
import java.util.concurrent.TimeUnit;

public class BaseClass {

    public static WebDriver driver;
    // @BeforeClass
    public WebDriver init() throws SQLException, IOException, ClassNotFoundException {
//        System.setProperty("webserver.chrome.driver","Path/for/chromedriver");
        WebDriverManager.getInstance(DriverManagerType.CHROME).setup();
        ChromeOptions options = new ChromeOptions();
        driver = new ChromeDriver(options);
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
        driver.manage().window().maximize();
        hitURL();
        return driver;
    }

    /**
     * This method hit the URL of the application
     */
    public void hitURL() throws SQLException, IOException, ClassNotFoundException {
        driver.get("http://localhost:8888/");
//        new GlobalInitClass();
    }

    public void closeDriver(){

        driver.quit();
    }
}
