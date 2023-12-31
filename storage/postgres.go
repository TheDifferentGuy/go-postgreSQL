package storage

import (
	"fmt"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	
)

type Config struct {
	// Host     string
	// Port     string
	Password string
	User     string
	DBName   string
}

func NewConnetion(config *Config) (*gorm.DB, error) {
	dsn := fmt.Sprintf(
		"host=db password=%s user=%s dbname=%s port=5432 sslmode=disable ",
		config.Password, config.User, config.DBName,
	)
	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})
	if err != nil {
		return db, err
	}
	return db, nil
}
