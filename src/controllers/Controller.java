package controllers;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.Configuration.ClassList;
import org.eclipse.jetty.webapp.WebAppContext;

public class Controller {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Server server = new Server(8005);
		WebAppContext ctx = new WebAppContext();
		ctx.setResourceBase("webapp");
		ctx.setContextPath("/contactsdb");
		
		//config
		ctx.setAttribute("org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern", ".*[^/]*jstl.*\\.jar$");
		ClassList classlist = ClassList.setServerDefault(server);
		classlist.addBefore("org.eclipse.jetty.webapp.JettyWebXmlConfiguration",
				"org.eclipse.jetty.annotations.AnnotationConfiguration");
		
		// Mappings
		ctx.addServlet("servlets.ServletHome", "/home");
		ctx.addServlet("servlets.ServletAddNewContact", "/addnew");
		
		// Setting the handler and starting the Server
		server.setHandler(ctx);
		server.start();
		server.join();
		


	}

}
