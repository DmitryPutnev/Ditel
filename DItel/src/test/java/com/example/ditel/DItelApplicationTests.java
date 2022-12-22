package com.example.ditel;

import com.example.ditel.models.Image;
import com.example.ditel.models.Product;
import com.example.ditel.models.User;
import com.example.ditel.repositories.UserRepository;
import com.example.ditel.services.UserService;
import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

@SpringBootTest
class DItelApplicationTests {
	@MockBean
	private UserRepository userRepository;
	@Autowired
	private UserService userService;
	@Test
	void productTest() {
		Product product = new Product(1L, "hhh", "hhh","3", 2000L, "spb", 20L, null, 0L, null);
		Assert.assertNotNull(product);
	}

	@Test
	void imageTest() {
		Product product = new Product(1L, "hhh", "hhh","3", 2000L, "spb", 20L, null, 0L, null);
		Image image = new Image(1L,"kl","77",20L,"jpg",true, null,product);
		Assert.assertNotNull(image);
	}

	@Test
	void userTest() {
		User user = new User();
		Assert.assertNotNull(user);
	}
}
