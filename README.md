# GO-API Product Registration

This project is a robust API for product registration developed using Golang. It leverages Docker for containerization, Postman for API testing, DBeaver for database management, and Postgres as the database. The project follows a well-structured architecture to ensure maintainability and scalability.

This project is a Golang-based API designed for product registration. It uses Docker for containerization, Postman for API testing, DBeaver for database management, and Postgres as the database.

## Technologies Used

- ![Golang](https://img.shields.io/badge/Go-1.15-blue?logo=go) **Golang**
- ![Docker](https://img.shields.io/badge/Docker-19.03.8-blue?logo=docker) **Docker**
- ![Postman](https://img.shields.io/badge/Postman-7.30.1-orange?logo=postman) **Postman**
- ![DBeaver](https://img.shields.io/badge/DBeaver-7.1.0-blue?logo=dbeaver) **DBeaver**
- ![Postgres](https://img.shields.io/badge/PostgreSQL-12.3-blue?logo=postgresql) **Postgres**

## Project Structure

```
GO-API
├── cmd
│   └── main.go
├── controller
│   └── product_controller.go
├── db
│   └── conn.go
├── model
│   ├── product.go
│   └── response.go
├── repository
│   └── product_repository.go
├── usecase
│   └── product_usecase.go
├── .project
├── docker-compose.yml
├── Dockerfile
├── go.mod
├── go.sum
```

## Getting Started

### Prerequisites

- [Golang](https://golang.org/dl/)
- [Docker](https://www.docker.com/products/docker-desktop/)
- [Postman](https://www.postman.com/downloads/)
- [DBeaver](https://dbeaver.io/download/)
- [Postgres](https://www.postgresql.org/download/)

### Installation

1. **Clone the repository**

   ```sh
   git clone https://github.com/yourusername/GO-API.git
   cd GO-API
   ```

2. **Build the Docker containers**

   ```sh
   docker-compose up --build
   ```

3. **Run the application**

   ```sh
   docker-compose up
   ```

### API Endpoints

- **Create a Product**

  ```http
  POST /products
  ```

  **Request Body:**

  ```json
  {
      "name": "Product Name",
      "description": "Product Description",
      "price": 100.0
  }
  ```

- **Get All Products**

  ```http
  GET /products
  ```

- **Get a Product by ID**

  ```http
  GET /products/{id}
  ```

- **Update a Product**

  ```http
  PUT /products/{id}
  ```

  **Request Body:**

  ```json
  {
      "name": "Updated Product Name",
      "description": "Updated Product Description",
      "price": 150.0
  }
  ```

- **Delete a Product**

  ```http
  DELETE /products/{id}
  ```

### Database

The project uses Postgres as the database. The connection settings can be configured in the `docker-compose.yml` file.

### Development

To start the application in development mode:

```sh
go run cmd/main.go
```

### Testing

Use Postman to test the API endpoints. Import the provided Postman collection to get started.

### Contributing

Feel free to submit issues, fork the repository, and send pull requests!

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
