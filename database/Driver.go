package database

import (
	"github.com/srtsignin/data-service/models"
)

// Driver represents a driver object for connecting
// to a Long Term Storage database
type Driver interface {
	Store(checkoff models.Checkoff)
	GenerateCSV() string
}

// GetDriver Returns a database driver
func GetDriver() Driver {
	return CouchDBDriver{}
}
