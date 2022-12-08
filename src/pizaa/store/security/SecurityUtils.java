package pizaa.store.security;

import java.util.List;

import pizza.store.Role;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.IUser;

public class SecurityUtils {

	public static String getCurrentRole() {
		String currentRole = Role.Everybody.name();
		ISecurityManager securityManager = ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager();
		ISession currentSession = securityManager.getCurrentSession();
		IUser currentUser = currentSession.getSessionUser();
		
		List<IRole> roles = currentUser.getAllRoles();
		if (roles !=null && !roles.isEmpty()) {
			for (IRole role : roles) {
				if (currentRole.equals(role.getName())) {
					continue;
				}
				currentRole = role.getName();
			}
		}
		return currentRole;
	}
}
