package com.cmg.configuration;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
 
public class Log4jPropertiesConfiguration
{
    static Logger log = Logger.getLogger(Log4jPropertiesConfiguration.class);
    public static void main(String[] args)
    {
        //PropertiesConfigurator is used to configure logger from properties file
        PropertyConfigurator.configure("log4j.properties");
 
        //Log in console in and log file
        log.debug("Log4j appender configuration is successful !!");
    }
}