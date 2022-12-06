package pizza.store;

public class LoginService {

	public static boolean checkLogin(String username, String password) {
		if (username != null && password != null && "NgocHung".equals(username)
				&& "123".equals(password)) {
			return true;
		}
		return false;
	}
}
