# Logstash Plugin

This is a plugin for [Logstash](https://github.com/elastic/logstash).

- This is an extension written for the logstash **file-plugin**. 
- The purpose of the plugin was to do some sort of **authentication** from an end-point before reading a specific input-file. 
  - The default **file-plugin** does not do any validation on the file placed into a given file path
  - This extension to the plugin can be used to validate if the newly arrived file is a valid one before processing it
