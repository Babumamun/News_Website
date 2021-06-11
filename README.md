# NewsWebsite
##This Dynamic website is about news News Release System, where news readers can read news and They also can search different news according to their interest.for the admin,he can write news every day and modify news and delete news after he log in to the website.To make this website i have to use some key knowledge such as:

Html5
CSS
JavaScript 
JSP
Servlet(annotations)
JDBC
CRUD
JST


Let me explain how does my project create, first for the main page which one is the home page for a news reader, here i got read all the data from the database, for that i had to create a java class inside news.com package the class name is news.java this class use for mapping data and i did create a java class name DB.java this class for connect workbench to my project. After that i create a News DAO( Data Access Object) class to  retrieval of data from a data the database.NewsDAO created a method call getbyRS ,then i create a servlet to do request-response for the client and server. The servlet name is GetAllServlet.java by this servlet retrieve data from the database and show it in the jsp page. I mean in the main.jsp page.and then i create a servlet for search any news from the website, the servlet name is GetByTittle.java and to get data i create i method inside the NewsDAO getbytittle. After that i focused on admin side so that admin can modify data  for that i create a login.html page. Inside login.html page for the validation i used JavaScript. Then admin can log in to the website. If admin log-in success then admin will see a page that’s call administrator.jsp,in this page i fetch all the data from the database and show it. For this i have used same method as main.jsp.But in the administrator.jsp have some button for add news and delete news and modify news.if admin click on add button it take on the add.jsp page, here admin can add data. To add data need to create a method in the News DAO add method and also need to create a servlet to get request-response. So the servlet name is AddServlet.java show the result need to create a result.jsp. For the modify button i kept id unchanged if admin click on modify button it will take him to update.jsp page. So do update i had to create a method inside News DAO the method name is update.and i servlet call UpdateServlet.java and to save this update i had to create another servlet call SaveUpdateServlet.java, after finish save i created DelServlet.java to delete data and add another method inside the NewsDAO class call del. After delete success it will take u result.jsp page to main page.
