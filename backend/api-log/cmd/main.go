package main

import (
    "net/http"
    "github.com/gin-gonic/gin"
)

// Представление данных, например, пользователя
type User struct {
    ID   string `json:"id"`
    Name string `json:"name"`
}

var users = []User{
    {ID: "1", Name: "0.03devAlice"},
    {ID: "2", Name: "Bob"},
}






func main() {
    router := gin.Default()

    router.GET("/users2", getUsers)
    router.GET("/api/v1/logs", getUsers)

    router.POST("/users", createUser)
    router.DELETE("/users/:id", deleteUser)

    router.Run(":8001")
}




// Получить список всех пользователей
func getUsers(c *gin.Context) {
    c.IndentedJSON(http.StatusOK, users)
}

// Создать нового пользователя
func createUser(c *gin.Context) {
    var newUser User

    // Привязать JSON к структуре newUser
    if err := c.ShouldBindJSON(&newUser); err != nil {
        c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
        return
    }

    // Добавить пользователя в список
    users = append(users, newUser)
    c.IndentedJSON(http.StatusCreated, newUser)
}

// Удалить пользователя по ID
func deleteUser(c *gin.Context) {
    id := c.Param("id")

    // Находим и удаляем пользователя из списка
    for i, u := range users {
        if u.ID == id {
            users = append(users[:i], users[i+1:]...)
            c.Status(http.StatusOK)
            return
        }
    }

    c.Status(http.StatusNotFound)
}
