ZWF Helper
-------------------
Zynga with friends helper space provides the "Game Helper Utility Tools" [GHUT] for Zynga with Friends games such as "Scramble with Friends", "Words with Friends" and "Hanging with Friends". 
The application has been hosted on Google app engine and can be accessed by the URL : http://zwf-helper.appspot.com/

To get the code:
-------------------
Clone the repository:

    $ git clone git://github.com/vmudigal/zwf-helper.git

If this is your first time using Github, review http://help.github.com to learn the basics.

To run the application:
-------------------	
From the command line with Maven:

    $ cd zwf-helper
    $ mvn tomcat7:run

or

In your preferred IDE such as SpringSource Tool Suite (STS) or IDEA:

* Import zwf-helper as a Maven Project
* Drag-n-drop the project onto the "SpringSource tc Server Developer Edition" or another Servlet 2.5 or > Server to run, such as Tomcat.

Access the deployed web application at: http://localhost:8080/