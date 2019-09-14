package com.resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

/**
 * @author Atul
 *
 */
@Path("/demo")
public class DemoResource {

	@GET
	@Produces("text/plain")
	public String welcome() {
		return "Welcome Admin";
	}

}
