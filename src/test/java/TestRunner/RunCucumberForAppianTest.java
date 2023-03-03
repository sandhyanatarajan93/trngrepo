package TestRunner;

import org.junit.runner.RunWith;

//import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.Cucumber;
import cucumber.api.CucumberOptions;



@RunWith(Cucumber.class)
@CucumberOptions(features = {"classpath:src/test/resources"}, glue = {
   "com.appiancorp.ps.cucumber"}, plugin = {"pretty"}, tags = { "@test1" })
public class RunCucumberForAppianTest {
}