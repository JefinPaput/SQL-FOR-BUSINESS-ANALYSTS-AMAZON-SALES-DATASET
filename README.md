# SQL-FOR-BUSINESS-ANALYSTS-AMAZON-SALES-DATASET
Amazon is an American Tech Multi-National Company whose business interests include E-commerce, where they buy and store the inventory, and take care of everything from shipping and pricing to customer service and returns. 
This dataset is having the data of 1K+ Amazon Product's Ratings and Reviews as per their details listed on the official website of Amazon.

## The Data Set
The data set is located [here]([http://www.sqlitetutorial.net/sqlite-sample-database/](https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset)) and consists of the following Features:

* `product_id` Product ID
* `product_name` Name of the Product
* `category` Category of the Product
* `discounted_price` Discounted Price of the Product
* `actual_price` Actual Price of the Product
* `discount_percentage` Percentage of Discount for the Product
* `rating` Rating of the Product
* `rating_count` Number of people who voted for the Amazon rating
* `about_product` Description about the Product
* `user_id` ID of the user who wrote review for the Product
* `user_name` Name of the user who wrote review for the Product
* `img_link` Image Link of the Product
* `product_link` Official Website Link of the Product



*  `customers` table stores customers data.
* `invoices` & `invoice_items` tables: these two tables store invoice data. The invoices table stores invoice header data and the invoice_items table stores the invoice line items data.
* `artists` table stores artists data. It is a simple table that contains only artist id and name.
* `albums` table stores data about a list of tracks. Each album belongs to one artist. However, one artist may have multiple albums.
* `media_types` table stores media types such as MPEG audio and AAC audio file.
* `genres` table stores music types such as rock, jazz, metal, etc.
* `tracks` table store the data of songs. Each track belongs to one album.
* `playlists` & `playlist_track` tables: playlists table store data about playlists. Each playlist contains a list of tracks. Each track may belong to multiple playlists. The relationship between the playlists table and tracks table is many-to-many. The playlist_track table is used to reflect this relationship.

## Analyzing the Data
For this project, I answered the following questions:
- Which tracks appeared in the most playlists? how many playlist did they appear in?

- Which track generated the most revenue? which album? which genre?

- Which countries have the highest sales revenue? What percent of total revenue does each country make up?

- How many customers did each employee support, what is the average revenue for each sale, and what is their total sale?
