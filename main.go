package main

import (
	"github.com/gofiber/fiber/v2"
	"github.com/yago85/API-passport/database"
	"github.com/yago85/API-passport/router"
)

func main() {
	// Start a new fiber app
	app := fiber.New()

	// Connect to the Database
	database.ConnectDB()

	// Send a string back for GET calls to the endpoint "/"
	router.SetupRoutes(app)

	// Listen on PORT 300
	app.Listen(":5888")
}
