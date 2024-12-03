-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 01:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-recipe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(2, 'Admin ', 'Admin', 'Admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(16, 'Breakfasts ', 'Category_827.jpg', 'Yes', 'Yes'),
(17, 'Lunch', 'Category_470.jpg', 'Yes', 'Yes'),
(18, 'Dinner', 'Category_16.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `name`, `email`, `rating`, `comments`) VALUES
(12, 'Uchit', 'shresthauchit96@gmail.com', 5, 'best website to ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `ingredients` text NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(255) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `ingredients`, `image_name`, `category_id`, `sub_category_id`, `featured`, `active`) VALUES
(65, 'momo', ' Prepare the Dough:\r\nIn a mixing bowl, add flour and salt.\r\nSlowly add water, kneading until you have a smooth, firm dough.\r\nCover and set aside for 30 minutes.\r\n2. Prepare the Filling:\r\nIn a large bowl, mix ground meat or vegetables, onion, cabbage, carrots, green onions, and ginger-garlic paste.\r\nAdd salt, pepper, soy sauce, and sesame oil (if using).\r\nMix well until combined.\r\n3. Shape the Momos:\r\nDivide the dough into small balls (about 1-inch in diameter).\r\nRoll each ball into a thin, round wrapper, around 3 inches in diameter.\r\nPlace a spoonful of filling in the center of each wrapper.\r\nFold and pleat the edges, pressing tightly to seal. (You can make round or half-moon shapes based on preference.)\r\n4. Steam the Momos:\r\nPlace momos in a steamer basket, ensuring they don’t touch each other.\r\nSteam over boiling water for 12-15 minutes until fully cooked.\r\n5. Prepare the Dipping Sauce:\r\nIn a pan, dry roast the sesame seeds and cumin seeds until fragrant.\r\nIn the same pan, add a little oil, sauté the tomatoes and dried chilies until tomatoes are soft.\r\nBlend the tomatoes, chilies, sesame seeds, cumin seeds, soy sauce, and salt into a smooth sauce.\r\n6. Serve:\r\nServe the hot momos with the spicy dipping sauce and garnish with fresh cilantro if desired. Enjoy!', 'Tomato,\r\nonion, \r\nGarlic,\r\nGinger,\r\nGreen onions,\r\nCabbage', 'Food-Name-2102.jpg', 17, NULL, 'Yes', 'Yes'),
(66, 'pizza', '. Prepare the Dough:\r\nIn a small bowl, dissolve the yeast and sugar in warm water. Let it sit for 5-10 minutes until frothy.\r\nIn a large bowl, combine the flour and salt.\r\nAdd the yeast mixture and olive oil to the flour. Mix until a dough forms.\r\nKnead the dough on a floured surface for about 5-7 minutes, until smooth and elastic.\r\nPlace the dough in a greased bowl, cover with a towel, and let it rise for 1-1.5 hours, until doubled in size.\r\n2. Prepare the Sauce:\r\nIn a saucepan, heat the olive oil over medium heat. Add minced garlic and sauté until fragrant.\r\nStir in tomato sauce, tomato paste, oregano, and basil. Season with salt and pepper to taste.\r\nSimmer the sauce for about 10-15 minutes, stirring occasionally, until thickened.\r\n3. Assemble the Pizza:\r\nPreheat your oven to 475°F (245°C).\r\nPunch down the dough and divide it in half for two pizzas. Roll each piece into a round or rectangular shape, about ¼ inch thick.\r\nPlace the rolled-out dough on a baking sheet or pizza stone.\r\nSpread a thin layer of sauce over the dough, leaving a small border for the crust.\r\nSprinkle mozzarella cheese evenly over the sauce.\r\nAdd your favorite toppings, such as pepperoni, bell peppers, mushrooms, and olives.\r\n4. Bake the Pizza:\r\nBake each pizza for 10-12 minutes, until the crust is golden and the cheese is bubbly.\r\nRemove from the oven and let it cool for a few minutes. Garnish with fresh basil if desired.\r\n5. Serve:\r\nSlice and serve your homemade pizza hot, and enjoy!', 'Tomato sauce,\r\nMozzarella cheese,\r\nOlive oil,\r\nToppings', 'Food-Name-3414.jpg', 17, NULL, 'Yes', 'Yes'),
(67, 'France Tost ', 'Prepare the Batter:\r\nIn a mixing bowl, whisk together eggs, milk, vanilla extract, cinnamon (if using), sugar, and a pinch of salt until well combined.\r\n2. Soak the Bread:\r\nHeat a skillet or griddle over medium heat and add a bit of butter or oil.\r\nDip each slice of bread into the batter, ensuring both sides are well coated but not soggy.\r\n3. Cook the French Toast:\r\nPlace the soaked bread on the skillet or griddle.\r\nCook each side for about 2-3 minutes, or until golden brown and slightly crispy on the edges.\r\n4. Serve:\r\nServe the French toast hot with a drizzle of maple syrup, a dusting of powdered sugar, fresh berries, and whipped cream if desired.\r\nEnjoy your delightful French toast!', 'Bread slices,\r\nEggs,\r\nMilk,\r\nSugar,\r\nVanilla extract,\r\nCinnamon,\r\nButter \r\n\r\n', 'Food-Name-4120.jpg', 16, NULL, 'Yes', 'Yes'),
(68, 'Burger', ' Prepare the Burger Patties:\r\nIn a large mixing bowl, combine the ground beef, salt, pepper, garlic powder, onion powder, and Worcestershire sauce.\r\nGently mix until just combined; avoid over-mixing to keep the patties tender.\r\nDivide the mixture into 4 equal portions and shape each into a round patty, about ¾ inch thick. Make a small indentation in the center of each patty with your thumb to prevent puffing up while cooking.\r\n2. Cook the Patties:\r\nHeat a skillet or grill over medium-high heat.\r\nPlace the patties on the skillet or grill. Cook for 3-4 minutes on each side for medium-rare, or adjust the time according to your preferred doneness.\r\nIf adding cheese, place a slice on each patty during the last minute of cooking and cover to melt.\r\n3. Toast the Buns:\r\nWhile the patties cook, lightly toast the burger buns on the skillet or grill until golden brown.\r\n4. Assemble the Burgers:\r\nPlace a lettuce leaf on the bottom bun, followed by the burger patty with melted cheese.\r\nAdd tomato, onion slices, and pickles as desired.\r\nSpread condiments on the top bun, then place it on top to complete the burger.\r\n5. Serve:\r\nServe the burgers hot with a side of fries or a simple salad, and enjoy your homemade creation!', ' beef,\r\nSalt and pepper,\r\nBurger buns,\r\nCheese slices,\r\nLettuce leaves\r\nTomato slices\r\nOnion slices\r\nPickles\r\n', 'Food-Name-7818.jpg', 16, NULL, 'Yes', 'Yes'),
(69, 'Blini', 'Prepare the Batter:\r\nIn a large bowl, whisk the eggs with sugar and salt.\r\nGradually add in warm milk and water, mixing continuously.\r\nSlowly add flour and baking powder (if using), whisking to avoid lumps.\r\nStir in the oil or melted butter until the batter is smooth and slightly runny. Let the batter rest for 15-20 minutes.\r\n2. Cook the Blini:\r\nHeat a non-stick skillet over medium heat. Lightly grease with butter or oil.\r\nPour a small amount of batter (about 1/4 cup) into the pan, swirling it around to coat the surface thinly.\r\nCook for 1-2 minutes until the edges begin to turn golden, then flip and cook for another 1-2 minutes on the other side.\r\nRepeat with the remaining batter, adding a bit more butter or oil if needed.\r\n3. Serve:\r\nServe the warm blini with sour cream, smoked salmon, caviar, or sweet toppings like honey, jam, or berries. Enjoy this versatile, classic treat!\r\n', 'milk,\r\nsugar,\r\nyeast,\r\nflour,\r\negg,\r\nbutter,\r\nsalt', 'blini.jfif', 16, NULL, 'Yes', 'Yes'),
(70, 'samosa', ' Prepare the Dough:\r\nIn a large mixing bowl, combine the flour and salt.\r\nAdd the oil or ghee and rub it into the flour until it resembles breadcrumbs.\r\nGradually add water, kneading until you have a stiff but smooth dough. Cover and let it rest for 20-30 minutes.\r\n2. Make the Filling:\r\nHeat 1 tablespoon of oil in a pan over medium heat. Add cumin seeds and let them sizzle.\r\nAdd green chili and sauté for a minute.\r\nAdd the mashed potatoes, green peas, and all the spices (coriander powder, garam masala, turmeric, red chili powder, and salt).\r\nMix well and cook for 2-3 minutes until fragrant.\r\nStir in fresh cilantro, then remove from heat and let the filling cool.\r\n3. Shape the Samosas:\r\nDivide the dough into small balls (about the size of a golf ball).\r\nRoll each ball into an oval or circle, about 6 inches in diameter. Cut it in half to form two semicircles.\r\nTake one semicircle, fold it into a cone shape, and seal the edge with a bit of water.\r\nFill the cone with the potato mixture, leaving space at the top to seal.\r\nPinch the open edges together, sealing with water, to form a triangular samosa shape. Repeat with remaining dough and filling.\r\n4. Fry the Samosas:\r\nHeat oil in a deep pan over medium heat.\r\nCarefully add the samosas in batches, frying until they turn golden brown and crispy, about 5-7 minutes.\r\nRemove with a slotted spoon and drain on paper towels.\r\n5. Serve:\r\nServe the hot samosas with mint chutney, tamarind sauce, or ketchup. Enjoy!', 'potatoes,\r\npeas,\r\noil,\r\nonion, \r\ngreen chilies,\r\nginger,\r\ncumin seeds,\r\nturmeric powder,\r\ncoriander,\r\ngaram masala,\r\nred chili powder,\r\nSalt,\r\ncilantro,\r\n lemon juice\r\n\r\n', 'Food-Name-4226.jpg', 18, NULL, 'Yes', 'Yes'),
(71, 'Pasta', ' Cook the Pasta:\r\nBring a large pot of salted water to a boil. Add pasta and cook according to package instructions until al dente.\r\nDrain the pasta, reserving 1/2 cup of pasta water, and set aside.\r\n2. Prepare the Tomato Garlic Sauce:\r\nIn a large skillet, heat the olive oil over medium heat.\r\nAdd the minced garlic and cook for about 1 minute, until fragrant and just golden (be careful not to burn it).\r\nStir in the crushed tomatoes, dried basil, and dried oregano. Season with salt, pepper, and red pepper flakes (if using).\r\nSimmer the sauce for about 10-15 minutes, allowing it to thicken slightly. If the sauce becomes too thick, add a bit of the reserved pasta water to reach your desired consistency.\r\n3. Combine and Serve:\r\nAdd the cooked pasta to the sauce, tossing to coat evenly. If needed, add a little more pasta water to help the sauce adhere to the pasta.\r\nServe hot, topped with fresh basil and a sprinkle of Parmesan cheese.\r\nEnjoy your delicious, homemade pasta!', 'flour,\r\nEggs,\r\nSalt,\r\nOlive oil,\r\nTomato sauce,\r\nParmesan cheese,\r\nGarlic,\r\nParsley,\r\nParsley \r\n', 'Food-Name-6847.jpg', 18, NULL, 'Yes', 'Yes'),
(72, 'chowmin', 'Cook the Noodles:\r\nBoil water in a large pot and cook the noodles according to package instructions until al dente.\r\nDrain and rinse the noodles with cold water to stop the cooking process. Set aside.\r\n2. Prepare the Sauce:\r\nIn a small bowl, whisk together soy sauce, oyster sauce, sesame oil, sugar, and black pepper. Set aside.\r\n3. Stir-Fry the Vegetables:\r\nHeat 1 tablespoon of vegetable oil in a large skillet or wok over medium-high heat.\r\nAdd the garlic and stir-fry until fragrant, about 30 seconds.\r\nAdd the onions, bell peppers, carrots, and cabbage. Stir-fry for 2-3 minutes until the vegetables are slightly tender but still crisp.\r\n4. Add Noodles and Sauce:\r\nPush the vegetables to one side of the skillet and add the remaining tablespoon of oil.\r\nAdd the cooked noodles and pour the sauce over them.\r\nToss everything together, mixing well to coat the noodles with the sauce and combine with the vegetables.\r\nAdd the bean sprouts if using, and cook for another 1-2 minutes until everything is well-heated.\r\n5. Serve:\r\nGarnish with chopped green onions and serve hot.\r\nEnjoy your homemade chow mein with its savory flavors and fresh, crisp veggies!', 'Noodles,\r\nVegetable oil,\r\nGarlic,\r\nGinger,\r\nOnion,\r\nBell pepper,\r\nCarrot,\r\nCabbage,\r\nGreen onions,\r\nSoy sauce,\r\nOyster sauce,\r\nVinegar,\r\nSesame oil,\r\nSalt and pepper\r\n', 'Food-Name-596.jpg', 18, NULL, 'Yes', 'Yes'),
(73, 'ham burger', 'Prepare the Burger Patties:\r\nIn a large mixing bowl, combine the ground beef, salt, pepper, garlic powder, onion powder, and Worcestershire sauce.\r\nGently mix until just combined; avoid over-mixing to keep the patties tender.\r\nDivide the mixture into 4 equal portions and shape each into a round patty, about ¾ inch thick. Make a small indentation in the center of each patty with your thumb to prevent puffing up while cooking.\r\n2. Cook the Patties:\r\nHeat a skillet or grill over medium-high heat.\r\nPlace the patties on the skillet or grill. Cook for 3-4 minutes on each side for medium-rare, or adjust the time according to your preferred doneness.\r\nIf adding cheese, place a slice on each patty during the last minute of cooking and cover to melt.\r\n3. Toast the Buns:\r\nWhile the patties cook, lightly toast the burger buns on the skillet or grill until golden brown.\r\n4. Assemble the Burgers:\r\nPlace a lettuce leaf on the bottom bun, followed by the burger patty with melted cheese.\r\nAdd tomato, onion slices, and pickles as desired.\r\nSpread condiments on the top bun, then place it on top to complete the burger.\r\n5. Serve:\r\nServe the burgers hot with a side of fries or a simple salad, and enjoy your homemade creation!', 'For the Burger Patties:, 1 lb (500 g) ground beef (80% lean for juicy burgers), Salt and pepper, to taste, 1 teaspoon garlic powder, 1 teaspoon onion powder, 1 tablespoon Worcestershire sauce (optional, for added flavor), For Assembling the Burgers:, 4 burger buns, 4 slices cheddar or American cheese (optional), Lettuce leaves, Tomato slices, Onion slices, Pickles, Condiments (ketchup, mustard, mayo)', 'Food-Name-7863.jpg', 16, NULL, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`id`, `title`) VALUES
(2, 'Pizza'),
(3, 'Burger'),
(4, 'pasta'),
(5, 'momo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `password`, `contact`) VALUES
(24, 'ishan', 'ishan@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '78798779'),
(28, 'sujit', 'sujit@gmail.com', '8c10aa7d10824b269a20424865f74efa', '2147483647'),
(29, 'user', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '2147483647'),
(31, 'uchit shrestha', 'nishan123@gmail.com', '214678f5fd25bf9c982efe600176ad26', '1111111111'),
(32, 'uchit shrestha', 'ishan@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '9863930868'),
(33, 'nishan', 'ishan@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '9819453454'),
(34, 'Uchitshrestha', 'shresthauchit96@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '9819453454'),
(35, 'uchit', 'shresthauchit@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', '9863930868');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD CONSTRAINT `tbl_food_ibfk_2` FOREIGN KEY (`sub_category_id`) REFERENCES `tbl_sub_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_food_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
